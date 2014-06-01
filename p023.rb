require 'pry'

def abundant?(number)
  sum = 0
  (number/2).downto(1).each do |divisor| 
    sum += divisor if number % divisor == 0
    return true if sum > number
  end
  return false
end

abundant_numbers = (12..28123).select do |number|
  abundant?(number)
end

abundant_sums = abundant_numbers.repeated_combination(2).map { |combo| combo.reduce(:+) }

puts ((1..28123).to_a - abundant_sums).reduce(:+)