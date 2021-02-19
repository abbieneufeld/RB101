def multiply_list(array_a, array_b)
  array_c=[]
  array_a.each_with_index do |num, index|
    array_c[index] = num * array_b[index]
  end
  array_c
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
