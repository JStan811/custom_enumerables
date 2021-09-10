# frozen_string_literal: true

require_relative '../enumerable'

puts 'any? vs. my_any?'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
puts (numbers.any? { |item| item < 6 })
puts (numbers.any? { |item| item > 6 })
puts ''
puts 'Mine:'
puts (numbers.my_any? { |item| item < 6 })
puts (numbers.my_any? { |item| item > 6 })
