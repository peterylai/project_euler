def collatz_length(number)
  count = 1
  while number != 1
    if number % 2 == 0
      number /= 2
    else
      number = number * 3 + 1
    end
    count += 1
  end
  return count
end

longest = (1..1000000).max_by do |number|
  collatz_length(number)
end

puts longest