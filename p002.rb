limit = 4000000

def even_fib_sum(limit)
  sum = 0
  a = 1
  b = 1
  c = a+b

  while c < limit
    sum += c if c % 2 == 0
    a = b
    b = c
    c = a + b
  end

  return sum
end

puts "The sum of all even numbered fibonacci numbers below #{limit} is #{even_fib_sum(limit)}"