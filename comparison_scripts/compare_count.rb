# frozen_string_literal: true

require_relative '../enumerable'

puts 'count vs. my_count'
numbers = [1, 2, 3, 4, 5, 2]
puts 'Original:'
puts "Argument given: #{numbers.count(2)}"
puts "Block given: #{numbers.count { |item| item > 4 }}"
puts ''
puts 'Mine:'
puts "Argument given: #{numbers.my_count(2)}"
puts "Block given: #{numbers.my_count { |item| item > 4 }}"
