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
puts "Please input a store name:"
@input_store_name = gets.chomp
puts "Please input the annual revenue:"
@input_annual_revenue = gets.chomp.to_i
puts "Is it selling mens apparel? 'yes/no'"
@confirm_mens_apparel = gets.chomp
if @confirm_mens_apparel == "yes"
  @input_mens_apparel = true
else
  @input_mens_apparel = false
end

puts "Is it selling womens apparel? 'yes/no'"
@confirm_womens_apparel = gets.chomp
if @confirm_womens_apparel == "yes"
  @input_womens_apparel = true
else
  @input_womens_apparel = false
end

Store.create(
  name: @input_store_name, 
  annual_revenue: @input_annual_revenue, 
  mens_apparel: @input_mens_apparel, 
  womens_apparel: @input_womens_apparel
).errors.messages.each_value { |msg| puts msg }



