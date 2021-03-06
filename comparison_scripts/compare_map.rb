# frozen_string_literal: true

require_relative '../enumerable'

puts 'map vs. my_map'
numbers = [1, 2, 3, 4, 5, 2]
puts 'Original:'
puts "Block includes operation: #{numbers.map { |item| item * item }}"
puts "Block is static value: #{numbers.map { 5 }}"
puts ''
puts 'Mine:'
puts "Block includes operation: #{numbers.my_map { |item| item * item }}"
puts "Block is static value: #{numbers.my_map { 5 }}"
a_proc = Proc.new { |item| item * item }
puts "When passed a proc: #{numbers.my_map(a_proc)}"
puts "When passed a number: #{numbers.my_map(1)}"
