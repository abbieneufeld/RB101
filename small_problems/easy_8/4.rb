def leading_substrings(string)
  results=[]
  current_substring=""
  array = string.chars
  array.each do |char|
    current_substring += char
    results << current_substring
    end
  results
end

def substrings(string)
  results=[]
  0.upto(string.size - 1) do |index|
  results << leading_substrings(string[index..(string.size-1)])
end
results.flatten
end
  
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]