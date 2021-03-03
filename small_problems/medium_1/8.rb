def fibonacci(n)
  if n == 1
    1
  elsif n == 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(5)

puts fibonacci(6)
