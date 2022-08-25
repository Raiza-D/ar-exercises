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
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: true, length: { in: 40..200 }
  validates :store_id, presence: true
end

class Store
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: true, length: { minimum: 0 }
  validate :must_carry_apparel

  def must_carry_apparel
    if !mens_apparel.present? || !womens_apparel.present?
      errors.add("mens_apparel or womens_apparel, cannot be blank")
    end
  end
end

delta_store = Store.create(name: "Delta")
delta_store.save

delta_store.errors