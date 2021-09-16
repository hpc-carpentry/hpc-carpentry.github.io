#!/usr/bin/env bash
if [ $# -ne 1 ]
  then
    echo -e "Usage:\n\t<script> <output file>"
    exit 1
else
  output_file=$1
fi

# Using "1" as value for false
sleep_a_bit=1
num_attempts=0
file_received=1
until [ "$file_received" = true ]
do
  if [ "$sleep_a_bit" = true ] ; then
    sleep_time=30
    echo "Sleeping $sleep_time seconds to give the file a chance to update"
    sleep $sleep_time
  fi
  # Grab the file
  echo "Attempting file download..."
  curl -L -o "$output_file" 'https://docs.google.com/spreadsheets/d/16xY1AziEqE11Aq26aMwlyoJgpkibWb0425KFqbchaiE/export?format=tsv&id=16xY1AziEqE11Aq26aMwlyoJgpkibWb0425KFqbchaiE&gid=1609449263'

  # Check for "Loading..." string as this means the file was still warming up
  if grep -q "Loading..." "$output_file"; then
    ((num_attempts=num_attempts+1))
    if [ "$num_attempts" -eq "5" ]; then
      echo "Downloaded file still contains 'Loading...' after $num_attempts) attempts...exiting!"
      exit 1
    fi
    echo "Downloaded file contains 'Loading...' string: retrying (attempt $num_attempts)"
    sleep_a_bit=true
  else
    file_received=true
  fi
done
