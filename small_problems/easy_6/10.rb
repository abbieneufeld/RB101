def triangle(n)
  spaces = n-1
  for i in (1..n)
    puts "#{' ' * spaces}#{'*' * (i)}\n"
    spaces -= 1
  end
  nil
end

puts triangle(5)

puts triangle(9)