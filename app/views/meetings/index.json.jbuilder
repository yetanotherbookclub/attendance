json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :title, :date, :location, :host, :time
  json.url meeting_url(meeting, format: :json)
end
