def is_palindrome?(number)
  return number.to_s == number.to_s.reverse
end

PRODUCTS = (100..999).to_a.repeated_combination(2).map { |factors| factors.reduce(:*) }

def has_2_3_dig_factors?(number)
  return PRODUCTS.include?(number)
end

starting_number = 998001 #999 * 999

while !(is_palindrome?(starting_number) && has_2_3_dig_factors?(starting_number))
  starting_number -= 1
end

puts "The largest palindrome made from the product of two 3-digit numbers is #{starting_number}"