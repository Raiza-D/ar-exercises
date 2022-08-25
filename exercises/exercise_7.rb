require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Validations for Employee model
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: true, length: { in: 40..200 }
  validates :store_id, presence: true
end

# Validations for Store model
class Store
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: true, length: { minimum: 0 }
  validate :must_carry_apparel

  # Custom validation method to ensure store being added has either apparel columns populated with value 
  def must_carry_apparel
    if !mens_apparel.present? || !womens_apparel.present?
      errors.add("mens_apparel or womens_apparel, cannot be blank")
    end
  end
end

# Ask user for a store name (store it in a variable)
print "Provide a store: "
@some_store = gets.chomp

@another_store = Store.create(name: @some_store)
puts @another_store.errors.full_messages
