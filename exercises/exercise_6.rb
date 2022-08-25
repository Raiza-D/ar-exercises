require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Raiza", last_name: "De Guzman", hourly_rate: 100)
@store1.employees.create(first_name: "Alice", last_name: "Wonderland", hourly_rate: 60)
@store1.employees.create(first_name: "Oprah", last_name: "Winfrey", hourly_rate: 150)

@store2.employees.create(first_name: "Augustus", last_name: "Maximus", hourly_rate: 50)
@store2.employees.create(first_name: "Marc", last_name: "Antony", hourly_rate: 60)
@store2.employees.create(first_name: "Faustina", last_name: "Brevsky", hourly_rate: 70)

puts "Store 1 employee count:"
puts @store1.employees.count

puts "Store 2 employee count:"
puts @store2.employees.count