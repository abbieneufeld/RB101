puts "What is your name?"
name = gets.chomp
if name.end_with?("!")
  name = name.delete_suffix("!").upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end