# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({name: 'admin', email: 'admin@test.com', password: '1234567a'})
facility = Facility.create({name: 'Room A'})
Reservation.create({start: '2018-06-10 10:00:00', end: '2018-06-10 12:00:00', user_id: user.id, facility_id: facility.id });
Reservation.create({start: '2018-06-10 15:00:00', end: '2018-06-10 15:30:00', user_id: user.id, facility_id: facility.id });
Reservation.create({start: '2018-06-13 14:00:00', end: '2018-06-13 15:00:00', user_id: user.id, facility_id: facility.id });

Timeslot.create([{time: '00:00:00'}, {time: '00:30:00'}, {time: '01:00:00'}, {time: '01:30:00'}, 
{time: '02:00:00'}, {time: '02:30:00'}, {time: '03:00:00'}, {time: '03:30:00'}, 
{time: '04:00:00'}, {time: '04:30:00'}, {time: '05:00:00'}, {time: '05:30:00'}, 
{time: '06:00:00'}, {time: '06:30:00'}, {time: '07:00:00'}, {time: '07:30:00'}, 
{time: '08:00:00'}, {time: '08:30:00'}, {time: '09:00:00'}, {time: '09:30:00'}, 
{time: '10:00:00'}, {time: '10:30:00'}, {time: '11:00:00'}, {time: '11:30:00'}, 
{time: '12:00:00'}, {time: '12:30:00'}, {time: '13:00:00'}, {time: '13:30:00'}, 
{time: '14:00:00'}, {time: '14:30:00'}, {time: '15:00:00'}, {time: '15:30:00'}, 
{time: '16:00:00'}, {time: '16:30:00'}, {time: '17:00:00'}, {time: '17:30:00'}, 
{time: '18:00:00'}, {time: '18:30:00'}, {time: '19:00:00'}, {time: '19:30:00'},
{time: '20:00:00'}, {time: '20:30:00'}, {time: '21:00:00'}, {time: '21:30:00'}, 
{time: '22:00:00'}, {time: '22:30:00'}, {time: '23:00:00'}, {time: '23:30:00'}])