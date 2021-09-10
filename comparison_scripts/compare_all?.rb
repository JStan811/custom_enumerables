# frozen_string_literal: true

require_relative '../enumerable'

puts 'all? vs. my_all?'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
puts (numbers.all? { |item| item < 6 })
puts (numbers.all? { |item| item < 4 })
puts ''
puts 'Mine:'
puts (numbers.my_all? { |item| item < 6 })
puts (numbers.my_all? { |item| item < 4 })
