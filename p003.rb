NUMBER = 600851475143

def prime_factors(number)
  return [] if number == 1
  smallest_factor = (2..number).find {|factor| number % factor == 0}
  [smallest_factor] + prime_factors(number / smallest_factor)
end

puts prime_factors(NUMBER).max