puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage"
tip_pct = gets.chomp.to_i
tip_amt = (bill * tip_pct / 100).round(2)
total = (bill + tip_amt).round(2)

puts "The tip is $#{tip_amt}"
puts "The totale is $#{total}"
