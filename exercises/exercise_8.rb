# frozen_string_literal: true

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store2.employees.create(first_name: 'Heng', last_name: 'Li', hourly_rate: 40)

# Employee.all.each { |employee| puts employee.inspect }
# @s = Store.joins('LEFT OUTER JOIN employees ON employees.store_id = stores.id')
#           .select('stores.name, stores.id, COUNT(employees.*) AS count')
#           .group('stores.id').where('stores.id = 1')
# @s.each { |store| puts "#{store.count} #{store.id}" }
