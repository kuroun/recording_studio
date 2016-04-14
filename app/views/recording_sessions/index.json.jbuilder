json.array!(@recording_sessions) do |recording_session|
  json.extract! recording_session, :id, :start_time, :end_time, :description
  json.url recording_session_url(recording_session, format: :json)
end
