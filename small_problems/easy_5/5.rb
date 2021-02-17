def cleanup(string)
  abc = %w(a b c d e f g h i j k l m n o p q r s t u w w x y z)
  nested_array = string.split.map {|word| word.chars}
  nested_array_no_symbols = nested_array.map do |word_array|
    word_array.map do |char| 
      if abc.include?(char)
        char
      else
        " "
      end
    end
end
  array_no_symbols = nested_array_no_symbols.map{ |word| word.join}
  cleaned_up = array_no_symbols.join(' ').squeeze(' ') 
  cleaned_up
end


p cleanup("---what's my +*& line?") 





