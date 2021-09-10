# frozen_string_literal: true

require_relative '../enumerable'

puts 'each_with_index vs. my_each_with_index'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
original = (numbers.each_with_index { |item, index| puts "#{item}, #{index}" })
puts ''
puts 'Mine:'
mine = (numbers.my_each_with_index { |item, index| puts "#{item}, #{index}" })
puts ''
puts "Original return value: #{original}"
puts "My return value: #{mine}"
