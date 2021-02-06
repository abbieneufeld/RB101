# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

  
puts "What is your loan amount?"
loan_amount = gets.chomp.to_f

puts "What is your Annual Percentage Rate?"
apr = gets.chomp.to_f / 100
monthly_interest_rate = apr / 12

puts "What is your loan duration in years?"
loan_duration = gets.chomp.to_f * 12

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

puts "Your monthly payment is #{monthly_payment}"

