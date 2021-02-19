ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(string)
  array = string.chars
  need_upper = true
  array.each do |char|
    if ALPHABET.include?(char)
      if need_upper 
        char.upcase!
      else
        char.downcase!
      end
      need_upper= !need_upper
    end
  end
    array.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'