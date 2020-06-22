def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.strip
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  # code #initial_round here
  sum
end

def hit?(utotal)
  prompt_user
  user=get_user_input
  if user=="s"
    utotal
  elsif user=="h"
    utotal+=deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
  utotal
end


def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total=0
  until(total>21) do
  welcome
  total=initial_round
  total=hit?(total)
  display_card_total(total)
  end
end_game(total)

  # code runner here
end
    
