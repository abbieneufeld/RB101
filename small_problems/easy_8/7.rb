def repeater(string)
  array = string.chars
  results=""
  array.each do |letter|
  results << letter
  results << letter
  end
  results
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''