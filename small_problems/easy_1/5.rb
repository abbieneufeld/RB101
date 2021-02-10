def reverse_sentence(str)
  arr = str.split
  reverse_arr=[]
  
  arr.size.times do 
    word = arr.shift
    reverse_arr.prepend(word)
  end
  reverse_arr.join(" ")
end

puts reverse_sentence('Reverse these words')