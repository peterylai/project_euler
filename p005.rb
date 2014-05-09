require 'prime'

max = 20
primes = (1..max).select { |number| Prime.prime?(number)}

def prime_factors(number)
  return [] if number == 1
  smallest_factor = (2..number).find {|factor| number % factor == 0}
  [smallest_factor] + prime_factors(number / smallest_factor)
end

lcm_prime_factorization = Hash.new(0)

(1..max).each do |number|
  primes.each do |prime_factor|
      lcm_prime_factorization[prime_factor] = [lcm_prime_factorization[prime_factor], prime_factors(number).count(prime_factor)].max
  end
end

lcm = lcm_prime_factorization.reduce(1) { |product, (factor, power)| product * factor**power}

puts "The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is #{lcm}"
