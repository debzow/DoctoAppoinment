# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#create 10 specialties in the table specialty
5.times do
  Specialty.create!(name: Faker::Hobbit.character)
end

#create 10 cities in the table city
5.times do
  City.create!(city_name: Faker::Hobbit.character)
end

#create 10 doctors in the table doctor and relation between doctors and specialties
10.times do
  doctor = Doctor.create!(first_name: Faker::Hobbit.character, last_name: Faker::Simpsons.character, postal_code: rand(1..100), city_id: rand(1..City.count))
  doctor.specialties << Specialty.find(rand(1..Specialty.count))
end

#create 10 patients in the patient category
10.times do
  Patient.create!(first_name: Faker::Hobbit.character, last_name: Faker::Simpsons.character, city_id: rand(1..City.count))
end

#create 20 appointments in the table appointment
20.times do
  Appointment.create!(date: Faker::Date.forward(20), doctor_id: rand(1..Doctor.all.count), patient_id: rand(1..Patient.all.count), city_id: rand(1..City.count))
end

