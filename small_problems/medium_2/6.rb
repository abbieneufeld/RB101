def triangle(a,b,c)
  if (a > 0) && (b > 0) && (c > 0) && (a + b + c == 180)
    if a == 90 || b == 90 || c == 90
      return :right
    elsif a > 90 || b > 90 || c > 90
      return :obtuse
    else
      return :acute
    end
  else
    return :invalid
  end
end

puts triangle(60, 70, 50) 
puts triangle(30, 90, 60) 
puts triangle(120, 50, 10)
puts triangle(0, 90, 90) 
puts triangle(50, 50, 50) 