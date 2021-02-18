def reverse!(array)
  if array.length >=2
      n = -2
      i = -3
   (array.length-1).times do
    array.push(array[n])
    array.delete_at(i)
    n -= 1
    i -= 1
    end
    array
  else
    array
  end
end

list = [1,2,]
p reverse!(list)