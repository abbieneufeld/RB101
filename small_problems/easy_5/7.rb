def word_sizes(string)
  result = { }
  array = string.split
  array = array.map do |word|
    word.delete('^A-Za-z')
  end
  array.each do |word|
    if result[(word.length)]
      result[(word.length)] += 1
    else
      result[(word.length)] = 1
    end
end
  result
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}