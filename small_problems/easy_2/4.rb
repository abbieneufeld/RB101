require 'date'

puts "What is your age?"
age_now = gets.chomp.to_i
puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i
years_left = age_retire - age_now
current_year = Date.today.year
retire_year = current_year + years_left
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"