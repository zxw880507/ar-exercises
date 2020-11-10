require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Jack", last_name: "Zhao", hourly_rate: 10)
@store1.employees.create(first_name: "Peter", last_name: "Li", hourly_rate: 5)
@store1.employees.create(first_name: "Lee", last_name: "Lei", hourly_rate: 1)

@store2.employees.create(first_name: "Susan", last_name: "Su", hourly_rate: 11)
@store2.employees.create(first_name: "Ryan", last_name: "Li", hourly_rate: 9)
@store2.employees.create(first_name: "James", last_name: "Hou", hourly_rate: 2)


