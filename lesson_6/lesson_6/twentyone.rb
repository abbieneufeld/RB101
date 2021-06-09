require 'pry'
=begin
1. Initialize deck
  You start with a normal 52-card deck
  consisting of the 4 suits (hearts, diamonds, clubs, and spades),
  and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

def prompt(msg)
  puts "==> #{msg}"
end

def add_suits_to_cards(values_hash, suits)
  cards = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']
  value = 1
  cards.each do |card|
    values_hash["#{card} of #{suits}"] = value
    value += 1 if value < 10
  end
end

def initialize_deck_values(values_hash)
  add_suits_to_cards(values_hash, "Hearts")
  add_suits_to_cards(values_hash, "Diamonds")
  add_suits_to_cards(values_hash, "Clubs")
  add_suits_to_cards(values_hash, "Spades")
end

def deal_card(deck, player)
  player.push(deck.pop)
end

def player_total(player, values_hash)
  total_value = 0
  player.each do |card|
    total_value += values_hash[card]
  end
  if player.to_s.include?("Ace")
    how_many_aces = player.to_s.count("Ace")
    how_many_aces.times do
      if total_value + 10 < 21
        total_value += 10
      end
    end
  end
  total_value
end

values = {}

initialize_deck_values(values)

# MAIN GAME LOOP STARTS HERE
loop do
  new_deck = values.keys.to_a
  user = []
  computer = []
  new_deck.shuffle!
  deal_card(new_deck, user)
  deal_card(new_deck, computer)
  deal_card(new_deck, user)
  deal_card(new_deck, computer)
  prompt "User's hand is: #{user}"
  prompt "The computer has a(n) #{computer[0]} and one unknown card."
  # user turn
  loop do
    user_total = player_total(user, values)
    prompt "User has #{user_total}"
    if user_total > 21
      break
    end
    prompt "Would you like to hit or stay? (Use 'h' or 's'.)"
    hit_or_stay = gets.chomp
    if hit_or_stay == 's'
      prompt "User has chosen to stay"
      break
    elsif hit_or_stay == 'h'
      prompt "User is being dealt a card"
      deal_card(new_deck, user)
      prompt "User's hand is #{user}"
      next
    end
  end
  # computer turn
  loop do
    computer_total = player_total(computer, values)
    user_total = player_total(user, values)
    if computer_total < 17 && user_total <= 21
      prompt "Computer hits"
      deal_card(new_deck, computer)
    else
      prompt "Computer Stays"
      break
    end
  end
  # determining final totals and winner
  user_total = player_total(user, values)
  computer_total = player_total(computer, values)
  prompt "User's hand is: #{user}, with a total of #{user_total}"
  prompt "Computers's hand is: #{computer}, with a total of #{computer_total}"
  if user_total > 21
    prompt "User has busted. Computer wins."
  elsif computer_total > 21
    prompt "Computer has busted. User wins."
  elsif user_total > computer_total
    prompt "User has won."
  elsif computer_total > user_total
    prompt "Computer has won."
  elsif computer_total == user_total
    prompt "Game is a tie."
  end
  prompt "play again?(y or n)"
  play_again = gets.chomp.downcase
  if play_again == 'y'
    next
  else
    break
  end
end
prompt "Thanks for playing Twenty-One!"
