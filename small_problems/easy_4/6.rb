=begin
take an old array.
create a new array
initialize result variable = 0 
set element 0 of new array equal to result += element 0 of old array
set element 1 of new array equal to result += element 1 of old array..
until old array has no more elements

=end
  
  
  
def running_total(arr)
  new_array=[]
  result = 0 
  idx = 0
  arr.each do |x|
    result += x
    new_array[idx] = result
    idx += 1
    end
  new_array
end
  
p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20]) 
p running_total([3]) 
p running_total([])