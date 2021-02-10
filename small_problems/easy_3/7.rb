def oddities(arr)
  ret_arr = []
  arr.each_with_index do |obj, idx|
    ret_arr.push(obj) if idx.even?
  end
  ret_arr
end

p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([]) 