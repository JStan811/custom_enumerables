# frozen_string_literal: true

require_relative '../enumerable'

puts 'select vs. my_select'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
puts (numbers.select { |item| item.even? })
puts ''
puts 'Mine:'
puts (numbers.my_select { |item| item.even? })
