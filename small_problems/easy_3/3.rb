puts "Please write a word or multiple words:"
user_input = gets.chomp
puts "There are #{user_input.split.join.chars.size} characters in #{user_input}"