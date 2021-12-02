# frozen_string_literal: true

input = File.read('day_1_input.txt').split("\n").map(&:to_i)

depth_increases = input.each_with_index.filter_map do |depth, i|
  depth if depth > input[i - 1]
end

puts "total input size: #{input.size}"
puts "number of depth increases: #{depth_increases.size}"
