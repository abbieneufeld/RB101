def century(year)
  cent = ((year - 1)/100) + 1
  cent = cent.to_s
  if cent.end_with?("0","4","5","6","7","8","9","11","12","13")
    "#{cent}th"
  elsif cent.end_with?("1")
    "#{cent}st"
  elsif cent.end_with?("2")
    "#{cent}nd"
  elsif cent.end_with?("3")
    "#{cent}rd"
  end 
  
end

puts century(2000)
puts century(2001)
puts century(1965) 
puts century(256) 
puts century(5) 
puts century(10103) 
puts century(1052) 
puts century(11201) 