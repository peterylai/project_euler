digits = (2 ** 1000).to_s.split("").map(&:to_i)
sum = digits.reduce(:+)

puts sum