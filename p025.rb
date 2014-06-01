nth_term = 3
a = 1
b = 1
c = a + b

while c.to_s.length < 1000
  a = b
  b = c
  c = a + b
  nth_term += 1
end

puts nth_term