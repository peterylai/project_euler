def prime?(number)
  smallest_factor = (2..number).find {|factor| number % factor == 0}
  smallest_factor == number
end

nth_prime = 1
number = 1

while nth_prime <= 10001
  nth_prime += 1 if prime?(number)
  number += 2
end

number -= 2

puts "The 10001st prime is #{number}"