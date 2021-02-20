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

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')