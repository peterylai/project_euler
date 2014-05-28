sundays = 0

# day 1 is monday, day 6 is sunday
day = 1

1901.upto(2000) do |year|
  months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0 )
    months[1] = 29 
  end
  months.each do |month|
    sundays += 1 if day == 6
    day = (day + month) % 7
  end
end

puts sundays
