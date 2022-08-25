require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
surrey_store.save

whistler_store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
whistler_store.save

yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true).each do |store|
  puts "#{store.name}"
  puts "#{store.annual_revenue}"
end

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000").each do |store|
  puts "#{store.name}"
  puts "#{store.annual_revenue}"
end

# Only use instance variables when you want to use that variable in another file.