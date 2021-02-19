LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a
def letter_case_count(str)
  results = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |char|
    if LOWERCASE_LETTERS.include?(char)
      results[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(char)
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end
  results
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }