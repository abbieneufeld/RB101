def rotate_rightmost_digits(number, rotate_me)
  array = number.to_s.chars
  array << array[-rotate_me]
  array.delete_at(-rotate_me-1)
  array.join.to_i
end

puts rotate_rightmost_digits(735291, 1) 
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917