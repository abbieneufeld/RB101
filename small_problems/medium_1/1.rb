def rotate_array(array)
array_copy = array.dup
array_copy.push(array[0])
array_copy.delete_at(0)
array_copy
end

rotate_array([7, 3, 5, 2, 9, 1])