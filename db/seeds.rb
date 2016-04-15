# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
session1 = {start_time: '2000-01-01 09:00:00 UTC', end_time: '2000-01-01 11:45:00 UTC', description: 'Morning Session'}
session2 = {start_time: '2000-01-01 13:00:00 UTC', end_time: '2000-01-01 15:45:00 UTC', description: 'Afternoon Session 1'}
session3 = {start_time: '2000-01-01 16:00:00 UTC', end_time: '2000-01-01 18:45:00 UTC', description: 'Afternoon Session 2'}
session4 = {start_time: '2000-01-01 19:00:00 UTC', end_time: '2000-01-01 21:45:00 UTC', description: 'Evening Session'}
RecordingSession.create([session1, session2, session3, session4]) if(RecordingSession.all.empty?)

user1 = {band_name: 'The Beattles', contact_name: 'John', contact_number: '6414517127'}
user2 = {band_name: 'F4', contact_name: 'Han Lee', contact_number: '641123456'}
User.create([user1, user2]) if(User.all.empty?)
