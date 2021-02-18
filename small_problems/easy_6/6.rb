def merge(array_a, array_b)
  result_array=[]
  array_a.each do |element|
    result_array.push (element) unless result_array.include?(element)
  end
  array_b.each do |element|
    result_array.push (element) unless result_array.include?(element)
  end
  result_array
end

puts merge([1, 3, 5], [3, 6, 9]) 