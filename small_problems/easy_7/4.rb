LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a
def swapcase(string)
  array = string.chars
  array.each do |char|
    if LOWERCASE_LETTERS.include?(char)
      char.upcase!
    elsif UPPERCASE_LETTERS.include?(char)
      char.downcase!
    end
  end
  array.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'