# frozen_string_literal: true

input = File.read('day_1_input.txt').split("\n").map(&:to_i)

depth_increases = input.each_with_index.filter_map do |depth, i|
  depth if depth > input[i - 1] && i.positive?
end

triplets = input.each_cons(3).to_a
tripled_sum_increases = triplets.each_with_index.filter_map do |triple, i|
  sum = triple.sum
  sum if sum > triplets[i - 1].sum && i.positive?
end

puts "total input size: #{input.size}"
puts "number of depth increases: #{depth_increases.size}"
puts "number of triplet sum increases: #{tripled_sum_increases.size}"
