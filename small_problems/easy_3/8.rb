def palindrome?(str)
  str.reverse == str
end

puts palindrome?('madam') 
puts palindrome?('Madam')    
puts palindrome?("madam i'm adam") 
puts palindrome?('356653') 