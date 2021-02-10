def xor?(arg_1,arg_2)
  if arg_1
    if arg_2
      false
    else
      true
    end
  else
    if arg_2
      true
    else
      false
    end
  end
end

puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 