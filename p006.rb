sum_of_squares = (1..100).reduce(0) { |sum, num| sum + num**2 }
square_of_sum = (1..100).reduce(:+)**2

puts "The difference is #{square_of_sum - sum_of_squares}"