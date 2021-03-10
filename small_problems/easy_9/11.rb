=begin
iterate through array
-sort characters in word alphabetically,
-create a new hash 
-create alphabetically sorted four letter character sequence as key
-create array of values for key

-if
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams={}
words.each do |word| 
  sorted = word.chars.sort
  if anagrams[sorted]
    anagrams[sorted] << word
  else
    anagrams[sorted] = [word]
  end
end

p anagrams.values