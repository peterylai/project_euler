class Integer
  def factorial
    (1..self).reduce(:*) || 1
  end
end

digits = 100.factorial.to_s.split("").map(&:to_i)
sum = digits.reduce(:+)

puts sum