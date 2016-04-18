# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
room1 = {room_name: '1', status: 'repair'}
room2 = {room_name: '2', status: 'used'}
room3 = {room_name: '3', status: 'unused'}
Room.create([room1, room2, room3]) if(Room.all.empty?)
if(RecordingSession.all.empty?)
  Room.all.each do |r|
    session1 = {room_id: r.id, start_time: '2000-01-01 09:00:00 UTC', end_time: '2000-01-01 11:45:00 UTC', description: 'Morning Session'}
    session2 = {room_id: r.id, start_time: '2000-01-01 13:00:00 UTC', end_time: '2000-01-01 15:45:00 UTC', description: 'Afternoon Session 1'}
    session3 = {room_id: r.id, start_time: '2000-01-01 16:00:00 UTC', end_time: '2000-01-01 18:45:00 UTC', description: 'Afternoon Session 2'}
    session4 = {room_id: r.id, start_time: '2000-01-01 19:00:00 UTC', end_time: '2000-01-01 21:45:00 UTC', description: 'Evening Session'}
    RecordingSession.create([session1, session2, session3, session4])   
  end
end

#because of security reason, we should use new and save instead of create
#see more on RoR security: http://guides.rubyonrails.org/security.html
if(User.all.empty?)
  user1 = User.new({band_name: 'The Beattles', contact_name: 'John', contact_number: '6414517127', email: 'user1@123.com', password: '12345678', password_confirmation: '12345678'})
  user1.save!
  user2 = User.new({band_name: 'F4', contact_name: 'Han Lee', contact_number: '641123456', email: 'user2@123.com', password: '12345678', password_confirmation: '12345678'})
  user2.save!  
end

admin1 = Admin.new
admin1.email = 'admin1@123.com'
admin1.password = '12345678'
admin1.password_confirmation = '12345678' 
admin1.save! if(Admin.all.empty?)
