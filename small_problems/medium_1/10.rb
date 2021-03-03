def fibonacci_last(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  array=last.to_s.chars
  array[-1].to_i
end

puts fibonacci_last(15)