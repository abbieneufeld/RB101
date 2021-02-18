def halvsies(input_array)
  length = input_array.length
  array_a = []
  array_b = []
  index = 0
  if length.even?
    length.times do 
      if index < length/2
        array_a << input_array[index] 
        index +=1
      else
        array_b << input_array[index] 
        index +=1
      end
    end
  elsif length.odd?
    length.times do 
      if index < ( (length/2) + 1 )
        array_a << input_array[index] 
        index +=1
      else
        array_b << input_array[index] 
        index +=1
      end
    end
  end
  array_c = [array_a, array_b]
  array_c
end


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]