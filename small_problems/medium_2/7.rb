require 'date'

def friday_13th(year)
  counter = 0
  (Date.new(year, 01, 01)..Date.new(year, 12, 31)).each do |date|
  if date.friday? && date.day == 13
    counter += 1
  end
end
  counter
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2

=begin
iterate through days of the year, if day is a friday and day is a 13th, counter +=1
return counter
=end