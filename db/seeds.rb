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