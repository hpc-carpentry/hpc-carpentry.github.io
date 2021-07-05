import pandas as pd
import urllib.parse
from datetime import datetime as dt

spreadsheet = '_data/workshops.tsv'

event_data = pd.read_csv(spreadsheet, sep='\t')

# Make sure URLs are complete
event_data["url"] = event_data["url"].map(lambda url: urllib.parse.urlparse(url, 'http').geturl())

# Convert the dates
event_data["Timestamp"] = pd.to_datetime(event_data["Timestamp"])
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

print(past_event_data)
print(future_event_data)
past_event_data.to_json(r"_data/all_past_workshops.json", orient='records', date_format='iso')
future_event_data.to_json(r"_data/all_upcoming_workshops.json", orient='records', date_format='iso')