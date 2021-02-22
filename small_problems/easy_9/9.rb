def get_grade(x, y, z)
  score = (x+y+z)/3
  if 90 <= score && score <= 100
      "A"
  elsif 80 <= score && score < 90
      "B"
  elsif 70 <= score && score < 80
      "C"
  elsif 60 <= score && score < 70
      "D"
  elsif 0 <= score && score < 60
      "F"
  end
end

puts get_grade(95, 90, 93) 
puts get_grade(50, 50, 95) 