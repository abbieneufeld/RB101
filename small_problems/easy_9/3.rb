def negative(num)
  if num.positive?
    -num
  else
    num
  end
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 