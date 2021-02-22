def twice(num)
  if num.to_s.length.even?
   first_half = num.to_s.slice(0,(num.to_s.length/2))
   second_half = num.to_s.slice((num.to_s.length/2),(num.to_s.length/2))
    if first_half == second_half
    num
  else
    num*2
    end
  else
    num*2
  end
end


puts twice(37) == 74
puts twice(334433) == 668866
puts twice(44) == 44
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10