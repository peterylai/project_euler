def number_of_factors(number)
  sqrt = Math.sqrt(number)
  num_factors = (1..sqrt).count {|factor| number % factor == 0}
  number % sqrt == 0 ? num_factors * 2 - 1 : num_factors * 2
end

def triangle_number(number)
  number * (number + 1) / 2
end

n = 1
while number_of_factors(triangle_number(n)) < 500
  n += 1
end
puts triangle_number(n)
