def sum(int)
  added_sum = 0
  int.to_s.chars.each do |digit|
   added_sum += digit.to_i
  end
  added_sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

