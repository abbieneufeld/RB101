def balanced?(string)
  parens=0
  string.chars.each do |char|
    if char =='('
      parens += 1
    elsif char ==")"
      parens -= 1
    end
    break if parens<0
  end
  
  parens.zero?
  
end


puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
=begin
problem
  true or false whether parentheses occur in matching pairs
rules )( is not a matching pair)
examples
  balanced?('What (is) this?') == true
  balanced?('What is) this?') == false
  balanced?('What (is this?') == false
  balanced?('((What) (is this))?') == true
  balanced?('((What)) (is this))?') == false
  balanced?('Hey!') == true
  balanced?(')Hey!(') == false
  balanced?('What ((is))) up(') == false
data structure
  
=end