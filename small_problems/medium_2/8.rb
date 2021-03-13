def div_by_7?(num)
 num % 7 == 0
end

def unique_digits?(num)
  num.to_s.chars.uniq.size == num.to_s.size
end

def featured(num)
  odd = false
  div_by_7 = false
  uniq = false
  if num < 9_876_543_210
    while odd == false || div_by_7 == false || uniq == false  do
      num +=1
      if num < 9_876_543_210
        if num.odd?
          odd = true
        else
          odd = false
        end
        if div_by_7?(num)
          div_by_7 = true
        else
          div_by_7 = false
        end
        if unique_digits?(num)
          uniq = true
        else
          uniq = false
        end
      else
        return "There is no possisble number that fulfills those requirements."
      end
    end
  else
    return "There is no possisble number that fulfills those requirements."
  end
  return num
end

puts featured(9_999_999_999)
puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547