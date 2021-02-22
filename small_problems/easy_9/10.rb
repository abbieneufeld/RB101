def buy_fruit(array)
  result = []
  array.each do |pair|
    pair[1].times do
    result << pair[0]
    end
  end
  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]