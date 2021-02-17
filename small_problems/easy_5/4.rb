def swap(string)
  nested_array = string.split.map do |word| 
  word.chars
  end
  nested_array.each do |word_array|
    first_letter = word_array[0]
    last_letter =  word_array[-1]
    word_array[0] = last_letter
    word_array[-1] = first_letter
  end
  sentence_array = nested_array.map do |word_array|
    word_array.join
  end
  
  sentence_array.join(" ")
end

p swap('Oh what a wonderful day it is') 
p swap('Abcde') 
p swap('a') 