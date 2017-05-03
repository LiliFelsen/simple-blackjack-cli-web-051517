def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  input = get_user_input

  if input == "s"
    return total
  elsif input == "h"
    new_total = total + deal_card
    return new_total
  elsif input != 'h' && input != 's'
    invalid_command
    prompt_user
    return total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
    until cards > 21
      cards = hit?(cards)
      display_card_total(cards)
    end
  end_game(cards)
end
