def interleave(array_a, array_b)
  array_c=[]
  length = array_a.length
  for i in (0..(length-1))
    array_c << array_a[i]
    array_c << array_b[i]
  end
  array_c
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=begin
PROBLEM
- take two arrays, make a new array with alternating elements from each array

EXAMPLES
-interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

ALGORITHM
- create result_array, 
- add element from array_a, add element from array_B, repeat for length of arrays
-return result_array

CODE
=end