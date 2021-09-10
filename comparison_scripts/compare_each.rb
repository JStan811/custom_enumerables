# frozen_string_literal: true

require_relative '../enumerable'

puts 'each vs. my_each'
numbers = [1, 2, 3, 4, 5]
puts 'Original:'
original = (numbers.each { |item| puts item })
puts ''
puts 'Mine:'
mine = (numbers.my_each { |item| puts item })
puts ''
puts "Original return value: #{original}"
puts "My return value: #{mine}"
