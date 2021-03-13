def triangle(a, b, c)
  sorted_sides=[a,b,c].sort 
  if sorted_sides[0] + sorted_sides[1] > sorted_sides[2]
    if a == b && b == c
      return :equilateral
    elsif a == b || a == c || a == b
      return :isosceles
    else
      return :scalene
    end
  else
    return :invalid
  end
end
    

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid