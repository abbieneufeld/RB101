def multiply_all_pairs(array_a, array_b)
  products = []
  length = array_b.length
  array_a.each do |num|
    for i in (0..(length - 1))
      products << (num*array_b[i])
    end
  end
  products.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
