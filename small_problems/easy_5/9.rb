def crunch(string)
  result = ''
  arr = string.chars
  arr.each do |letter|
    result.concat(letter) unless result[-1] == letter
  end
  result
end

puts crunch('ddaaiillyy ddoouubbllee') 
puts crunch('4444abcabccba') 
puts crunch('ggggggggggggggg') 
puts crunch('a') 
puts crunch('') 