# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
Attendance.destroy_all
User.destroy_all

10.times do
   user = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, description: Faker::TvShows::GameOfThrones.quote, email: Faker::Internet.email)
   event = Event.create!(title: Faker::Music::Opera.verdi, description: Faker::Lorem.sentence(word_count: 20), price: Faker::Number.between(from: 1, to: 1000), start_date: Faker::Time.forward(days: 5,  period: :evening, format: :long), location: Faker::Nation.capital_city, duration: Faker::Number.between(from: 1, to: 24))
   #attendance = Attendance.create!(stripe_customer_id: Faker::IDNumber.valid)
  end