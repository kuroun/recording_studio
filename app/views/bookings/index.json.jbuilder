json.array!(@bookings) do |booking|
  json.extract! booking, :id, :reference, :reference, :recording_date, :comment
  json.url booking_url(booking, format: :json)
end
