def stringy(int)
  str = ""
  count = 1
  int.times do
    if count.odd?
      str[count-1] = "1"
    else
      str[count-1] = "0"
    end 
    count += 1
  end
  str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'