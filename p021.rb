def divisor_sum(number)
  return 0 if number == 0
  divisors = 1.upto(number-1).select { |divisor| number % divisor == 0}
  divisors.reduce(:+)
end

factor_sums = (0..10000).map do |number|
  divisor_sum(number) 
end

amicables = factor_sums.select.with_index do |sum, index|
  index == factor_sums[sum || 0] && index != sum
end

puts amicables.reduce(:+)