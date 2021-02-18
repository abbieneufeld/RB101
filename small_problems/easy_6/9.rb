def include?(array, search_value)
  answer = false
  for i in (0..(array.length-1))
    if array[i] == search_value
      answer = true
      break
    end
  end
  answer
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false