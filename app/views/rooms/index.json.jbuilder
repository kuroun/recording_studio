json.array!(@rooms) do |room|
  json.extract! room, :id, :room_name, :status, :description
  json.url room_url(room, format: :json)
end
