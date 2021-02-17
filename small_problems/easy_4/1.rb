def short_long_short(str_1, str_2)
  if str_1.length > str_2.length
    str_2 + str_1 + str_2
  else
    str_1 + str_2 + str_1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"