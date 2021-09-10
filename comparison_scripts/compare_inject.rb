# frozen_string_literal: true

require_relative '../enumerable'

puts 'inject vs. my_inject'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
puts "Sum with no initial value: #{numbers.inject { |sum, n| sum + n }}"
puts "Sum with initial value: #{numbers.inject(10) { |sum, n| sum + n }}"
puts "Difference with no initial value: #{numbers.inject { |difference, n| difference - n }}"
puts "Difference with initial value: #{numbers.inject(10) { |difference, n| difference - n }}"
puts "Product with no initial value: #{numbers.inject { |product, n| product * n }}"
puts "Product with initial value: #{numbers.inject(10) { |product, n| product * n }}"
puts ''
puts 'Mine:'
puts "Sum with no initial value: #{numbers.my_inject { |sum, n| sum + n }}"
puts "Sum with initial value: #{numbers.my_inject(10) { |sum, n| sum + n }}"
puts "Difference with no initial value: #{numbers.my_inject { |difference, n| difference - n }}"
puts "Difference with initial value: #{numbers.my_inject(10) { |difference, n| difference - n }}"
puts "Product with no initial value: #{numbers.my_inject { |product, n| product * n }}"
puts "Product with initial value: #{numbers.my_inject(10) { |product, n| product * n }}"

def multiply_els(array)
  array.my_inject { |product, n| product * n }
end

puts ''
puts 'multiply_els test:'
puts multiply_els(numbers)
