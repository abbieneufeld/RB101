def bubble_sort!(array)
  size = array.size
  swapped_boolean_array=[]
  for i in 0..(size-2)
    swapped_boolean_array[i]=true
  end
  while swapped_boolean_array.any? do
    for i in 0..(size-2)
      if array[i] > array[i+1]
        value_a = array[i]
        value_b = array[i+1] 
        array[i] = value_b
        array[i+1] = value_a
        swapped_boolean_array[i] = true
      else
        swapped_boolean_array[i] = false
      end
    end
  end
  array
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


=begin
get size of array
create swapped boolean array, fill with true values,
while swapped boolean array of any is true
for element[0] to element[size-2] of array
  compare element, and element plus 1
  if element is greater than element plus 1, swap positions
  if element is swapped set swap boolean array[swapped element index] to true
  if element is not swapped set swap boolean array[swapped element index] to false

=end