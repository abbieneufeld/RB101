def reverse(input_array)
  result_array=[]
  if input_array.length >=2
      n = -1
   (input_array.length).times do
    result_array.push(input_array[n])
    n -= 1
    end
    result_array
  else
    result_array = input_array.dup
  end
end

list = [1]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1]                     # => true
puts new_list == [1]               