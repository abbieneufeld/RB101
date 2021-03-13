def is_upper?(char)
  char =~ /[A-Z]/ 
end

def is_lower?(char)
  char =~ /[a-z]/ 
end

def letter_percentages(string)
  string_size = string.size
  uppercase = 0
  lowercase = 0
  neither = 0
  string.chars.each do |char|
    if is_lower?(char)
      lowercase +=1
    elsif is_upper?(char)
      uppercase +=1
    else
      neither +=1
    end
  end
  hash ={}
  hash[:lowercase]=(lowercase*100.00/string_size)  
  hash[:uppercase]=(uppercase*100.00/string_size)
  hash[:neither]=(neither*100.00/string_size)
  hash
end


puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }