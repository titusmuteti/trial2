# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'mysql2'
require 'faker'
puts "🌱 Seeding..."


# Establish a connection to the MySQL database
client = Mysql2::Client.new(
  host: 'localhost',
  username: 'mumo',
  password: 'Titusmumo@2',
  database: 'makawasco'
)


user = Client.create([
    {
        first_name: "John",
        last_name: "Nzuki",
        email: "john@example.com",
        phone_number: 712345678,
        # premise_id: 1
    },
    {
        first_name: "Martha",
        last_name: "John",
        email: "martha@example.com",
        phone_number: 712345678,
        # premise_id: 10
    },
    {
        first_name: "Annita",
        last_name: "Ray",
        email: "annita@example.com",
        phone_number: 712345678,
        # premise_id: 5
    },
    {
        first_name: "Caleb",
        last_name: "Kositany",
        email: "caleb@example.com",
        phone_number: 712345678,
        # premise_id: 2
    },
    {
        first_name: "Mark",
        last_name: "Mutiso",
        email: "mark@example.com",
        phone_number: 712345678,
        # premise_id: 4
    },
    {
        first_name: "Edward",
        last_name: "Mwendwa",
        email: "edward@example.com",
        phone_number: 712345678,
        # premise_id: 3
    },
    {
        first_name: "Antony",
        last_name: "Greenword",
        email: "antony@example.com",
        phone_number: 712345678,
        # premise_id: 6
    },
    {
        first_name: "Mercy",
        last_name: "Mwende",
        email: "mwende@example.com",
        phone_number: 712345678,
        # premise_id: 7
    },
    {
        first_name: "Gersmain",
        last_name: "Onyancha",
        email: "gersmain@example.com",
        phone_number: 712345678,
        # premise_id: 8
    },
    {
        first_name: "Masila",
        last_name: "Muoki",
        email: "masila@example.com",
        phone_number: 712345678,
        # premise_id: 9
    }
])

user.each do |row|
    client.query("INSERT INTO client (first_name, last_name, email, confirm_password, phone_number) VALUES ('#{row[:first_name]}', '#{row[:last_name]}', '#{row[:email]}', '#{row[:confirm_password]}','#{row[:phone_number]}')")
  end

# Premise.create([
#     {
#         owners_firstname: "Mark",
#         owners_lastname: "Maweu",
#         address: "123 Main Street",
#         town: "Tala"
#     },
#     {
#         owners_firstname: "Arnold",
#         owners_lastname: "Mutuku",
#         address: "234 Cornwall",
#         town: "Kangundo"
#     },
#     {
#         owners_firstname: "Roseline",
#         owners_lastname: "Munuve",
#         address: "45 conerwall",
#         town: "Nguluni"
#     },
#     {
#         owners_firstname: "Grace",
#         owners_lastname: "Ndanu",
#         address: "98 love street",
#         town: "Tala"
#     },
#     {
#         owners_firstname: "Catherine",
#         owners_lastname: "Mutungi",
#         address: "123 Clouds road",
#         town: "Kathithyamaa"
#     },
#     {
#         owners_firstname: "Mark",
#         owners_lastname: "Masai",
#         address: "123 Main Street",
#         town: "Kangundo"
#     },
#     {
#         owners_firstname: "Sila",
#         owners_lastname: "Mutunga",
#         address: "Main Street",
#         town: "Tala"
#     },
#     {
#         owners_firstname: "Ndanu",
#         owners_lastname: "Rose",
#         address: "123",
#         town: "Kathithyamaa"
#     },
#     {
#         owners_firstname: "Scholar",
#         owners_lastname: "Mutune",
#         address: "123 Main road",
#         town: "Kathithyamaa"
#     },
#     {
#         owners_firstname: "Dance",
#         owners_lastname: "Group",
#         address: "123 Main Street",
#         town: "Nguluni"
#     },
# ])

employee = Employee.create([
    {
        first_name: "David",
        last_name: "Mutembei",
        location: "Tala",
        email: "david@gmail.com"
    },
    {
        first_name: "Morris",
        last_name: "Obama",
        location: "Nguluni",
        email: "morris@gmail.com"
    },
    {
        first_name: "Tom",
        last_name: "Mutisya",
        location: "Kathithyamaa",
        email: "tom@gmail.com"
    },
    {
        first_name: "Ngusya",
        last_name: "Mule",
        location: "Kangundo",
        email: "mule@gmail.com"
    },
    {
        first_name: "Grace",
        last_name: "Kalondu",
        location: "Tala",
        email: "grace@gmail.com"
    },
    {
        first_name: "Rama",
        last_name: "Scholes",
        location: "Kangundo",
        email: "rama@gmail.com"
    },
    {
        first_name: "Moses",
        last_name: "Mwanzia",
        location: "Nguluni",
        email: "mose@gmail.com"
    },
])

employee.each do |row|
    client.query("INSERT INTO employee (first_name, last_name, location) VALUES ('#{row[:first_name]}', '#{row[:last_name]}', '#{row[:location]}')")
  end

bill = Bill.create([
    {
        date_read: Faker::Date.backward(days: 14),
        previous_reading: 3,
        current_reading: 10,
        balance: 50,
        paid: 0,
        date_paid: Faker::Date.forward(days: 14),
    },
    {
        date_read: Faker::Date.backward(days: 14),
        previous_reading: 300,
        current_reading: 1000,
        balance: 0,
        paid: 1,
        date_paid: Faker::Date.forward(days: 14),
    },
    {
        date_read: Faker::Date.backward(days: 14),
        previous_reading: 3,
        current_reading: 8,
        balance: 500,
        paid: 1,
        date_paid: Faker::Date.forward(days: 14),
    },
    {
        date_read: Faker::Date.backward(days: 14),
        previous_reading: 30,
        current_reading: 55,
        balance: 0,
        paid: 0,
        date_paid: Faker::Date.forward(days: 14),
    },
    {
        date_read: Faker::Date.backward(days: 14),
        previous_reading: 33,
        current_reading: 36,
        balance: 0,
        paid: 1,
        date_paid: Faker::Date.forward(days: 14),
    },
])

bill.each do |row|
    client.query("INSERT INTO bill (date_read, previous_reading, current_reading, balance, date_paid) VALUES ('#{row[:date_read]}', '#{row[:previous_reading]}', '#{row[:current_reading]}', '#{row[:balance]}', '#{row[:date_paid]}')")
  end


# Service.create([
#     {
#         client_id: 1,
#         premise_id: 4,
#         created_on: "thursday",
#         resolved_on: "friday",
#         # assigned_to: "morris obama",
#         remarks: "Great service",
#         employee_id: 1,
#     },
#     {
#         client_id: 4,
#         premise_id: 3,
#         created_on: "monday",
#         resolved_on: "thursday",
#         # assigned_to: "morris obama",
#         remarks: "Great service",
#         employee_id: 4,
#     },
#     {
#         client_id: 10,
#         premise_id: 1,
#         created_on: "thursday",
#         resolved_on: "friday",
#         # assigned_to: "morris obama",
#         remarks: "Great service",
#         employee_id: 2,
#     },
#     {
#         client_id: 1,
#         premise_id: 4,
#         created_on: "thursday",
#         resolved_on: "friday",
#         # assigned_to: "morris obama",
#         remarks: "on time response",
#         employee_id: 4,
#     },
# ])

puts "✅ Done seeding!"

# Close the database connection
client.close