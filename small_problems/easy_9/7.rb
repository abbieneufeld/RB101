def swap_name(string)
  array = string.split
  "#{array[1]}, #{array[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'