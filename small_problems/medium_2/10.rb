def sum_square_difference(n)
  sum_a=0
  sum_b=0
  n.downto(1) do |i|
    sum_a += i
  end
  n.downto(1) do |i|
    sum_b += i**2
  end
  (sum_a**2) -sum_b
end


puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150