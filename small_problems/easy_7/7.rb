def show_multiplicative_average(array)
  length = array.length
  product = 1
  array.each do |num|
    product *= num
  end
  average=product.to_f/length
  puts "The result is #{format('%.3f', average)}"
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667