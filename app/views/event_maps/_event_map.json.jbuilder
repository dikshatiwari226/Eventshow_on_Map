json.extract! event_map, :id, :title, :address, :start_date, :end_date, :created_at, :updated_at
json.url event_map_url(event_map, format: :json)
