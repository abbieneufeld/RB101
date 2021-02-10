def prompt(str)
  str.prepend(">> ")
  puts str
end

prompt("Please enter an integer greater than 0:")
upper_limit = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product")
operation = gets.chomp.downcase

if operation == "s"
  result = 0 
  for i in (1..upper_limit)
    result +=i
  end
  puts "The sum of the integers between 1 and #{upper_limit} is #{result}."
elsif operation == "p"
  result = 1
  for i in (1..upper_limit)
    result *= i
  end
  puts "The product of the integers between 1 and #{upper_limit} is #{result}."
end

