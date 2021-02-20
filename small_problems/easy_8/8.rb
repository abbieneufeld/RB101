CONSONANTS = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"] + ["B", "C", "D", "F", "G","H", "J", "K", "L", "M", "N", "P", "Q","R","S", "T", "V", "W", "X", "Y", "Z"] 
             
def double_consonants(string)
  array = string.chars
  results = ""
  array.each do |char|
    if CONSONANTS.include?(char)
      results << char << char
    else
      results << char
    end
  end
  results
end



puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""