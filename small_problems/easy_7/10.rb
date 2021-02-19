def penultimate(str)
  array=str.split
  array[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'