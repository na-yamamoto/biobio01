json.extract! event, :id, :edate, :etype, :created_at, :updated_at
json.url event_url(event, format: :json)