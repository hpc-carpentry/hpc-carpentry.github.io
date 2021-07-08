import pandas as pd
import urllib.parse
from datetime import datetime as dt

spreadsheet = '_data/workshops.tsv'

event_data = pd.read_csv(spreadsheet, sep='\t')

# Drop data that is incomplete
# - This happens when a response is deleted in the "Form responses 1" Google sheet
#   rather than in the "custom_headings" sheet or cells are emptied
for required_key in ["name", "url", "online", "in_person", "start_date", "end_date"]:
    # Catch a bad ref
    event_data = event_data.drop(event_data[event_data[required_key] == "#REF!"].index)
    # Also drop if a required field is blank
    event_data = event_data.drop(event_data[pd.isna(event_data[required_key])].index)

# Make sure URLs are complete
event_data["url"] = event_data["url"].map(lambda url: urllib.parse.urlparse(url, 'http').geturl())

# Convert the dates
event_data["start_date"] = pd.to_datetime(event_data["start_date"])
event_data["end_date"] = pd.to_datetime(event_data["end_date"])

# Split the dataframe into past and ongoing/future events
# - First sort by end_date
event_data = event_data.set_index(event_data['end_date'])
event_data = event_data.sort_index()
# - Now split according to todays date
today = pd.to_datetime("today")
past_event_data = event_data[:today]
future_event_data = event_data[today:]

# - reverse past events so that the most recent past event appears first
past_event_data = past_event_data.reindex(index=past_event_data.index[::-1])

# - re-sort current/future event data according to the start date
future_event_data = future_event_data.set_index(future_event_data['start_date'])

print(past_event_data)
print(future_event_data)
past_event_data.to_json(r"_data/all_past_workshops.json", orient='records', date_format='iso', indent=2)
future_event_data.to_json(r"_data/all_upcoming_workshops.json", orient='records', date_format='iso', indent=2)
