limit = 2000000
primes = (0..limit).to_a

(2..limit).each do |number|
  (2..limit/number).each do |index| 
    primes[number * index] = nil
  end
end

puts primes.compact.reduce(:+)