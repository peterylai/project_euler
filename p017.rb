def get_word(num)

  ones_mapping = {
    0 => "",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen", 
    19 => "nineteen" 
  }

  tens_mapping = {
    2 => "twenty",
    3 => "thirty",
    4 => "forty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety"
  }

  case num
  when 0..19
    return ones_mapping[num]
  when 20..99
    return tens_mapping[(num/10).to_i] + ( ones_mapping[num%10] || "")
  when 100..999
    joiner = num % 100 != 0 ? "and" : ""
    return ones_mapping[(num/100).to_i] + "hundred" + joiner + get_word(num % 100)
  when 1000
    return "onethousand"
  end
end

total = (1..1000).reduce(0) do |sum, number|
  sum + get_word(number).length
end

puts total