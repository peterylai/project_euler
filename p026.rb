require 'prime'

def recurring_cycle_length(num)
  return 0 if num % 2 == 0 || num % 5 == 0
   
  repetend_length = 1

  while (((10**repetend_length) - 1) % num) != 0
    repetend_length += 1
  end
   
  repetend_length
end

max = 0
Prime.each(1000) do |prime|
  max = recurring_cycle_length(max) > recurring_cycle_length(prime) ? max : prime
end
puts max
