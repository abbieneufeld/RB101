def prompt(str)
  str.prepend("==> ")
  puts str
end

def valid_number?(num_str)
  num_str.to_i.to_s == num_str
end

first_5 = []
num1 = nil
num2 = nil
num3 = nil
num4 = nil
num5 = nil
last_num = nil

loop do
prompt("Enter the 1st number:")
num1 = gets.chomp
break if valid_number?(num1)
puts "That is not a valid number."
end

first_5 << num1.to_i 

loop do
prompt("Enter the 2nd number:")
num2 = gets.chomp
break if valid_number?(num2)
puts "That is not a valid number."
end

first_5 << num2.to_i 

loop do
prompt("Enter the 3rd number:")
num3 = gets.chomp
break if valid_number?(num3)
puts "That is not a valid number."
end

first_5 << num3.to_i

loop do
prompt("Enter the 4th number:")
num4 = gets.chomp
break if valid_number?(num4)
puts "That is not a valid number."
end

first_5 << num4.to_i

loop do
prompt("Enter the 5th number:")
num5 = gets.chomp
break if valid_number?(num5)
puts "That is not a valid number."
end

first_5 << num5.to_i

loop do
prompt("Enter the last number:")
last_num = gets.chomp
break if valid_number?(last_num)
puts "That is not a valid number."
end


if first_5.include?(last_num.to_i)
  puts "The number #{last_num} appears in #{first_5}"
else
  puts "The number #{last_num} does not appear in #{first_5}"
end