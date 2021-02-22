def uppercase?(string)
  all=[]
  array = string.chars
  array.each do |char|
    if char.upcase == char
      all << true
    else
      all << false
    end
  end
  all.all?
end


puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true