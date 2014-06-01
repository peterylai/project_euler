numbers = ('0'..'9').to_a.permutation.map {|permutation| permutation.join.to_i}
numbers.sort!

puts numbers[999999]