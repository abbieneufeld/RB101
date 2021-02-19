def word_cap(string)
  array = string.split
  array.each do |word|
    word.capitalize!
  end
  array.join(' ')
end


puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'