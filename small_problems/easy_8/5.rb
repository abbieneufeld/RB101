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

def palindromes(string)
  results = substrings(string)
  results = results.select do |substring|
  substring.size > 1 && substring.reverse == substring
end
results
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]