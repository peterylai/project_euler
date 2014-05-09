max = 1000
first_multiple = 3
second_multiple = 5

def sum_for_one_multiple(max, multiple)
    n = (max - 1) / multiple
    return n * (n + 1) / 2 * multiple
end

def sum_for_two_multiples(max, first_multiple, second_multiple)
    return sum_for_one_multiple(max, first_multiple) + sum_for_one_multiple(max, second_multiple) - sum_for_one_multiple(max, first_multiple * second_multiple)
end

puts "The sum of all multiples of #{first_multiple} and #{second_multiple}"
puts "That are below the number #{max} is : #{sum_for_two_multiples(max, first_multiple, second_multiple)}"