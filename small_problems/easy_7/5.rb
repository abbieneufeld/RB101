def staggered_case(string)
  array = string.chars
  array.each_with_index do |char, index|
    if index.even?
      char.upcase!
    elsif index.odd?
      char.downcase!
    end
  end
  array.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
