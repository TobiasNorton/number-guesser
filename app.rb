def start_game
  play_game()
end 

def play_game
  puts "Think of a number between 1 and 1000. Ready? \n"

  upper = 1000
  lower = 1
  guess = (lower + upper) / 2
  tries = 0
  user_response = ''

  while user_response != "y"
    puts "Is your number #{guess}? Please say 'y' for yes, 'up' for higher  or 'down' for lower."

    user_response = gets.chomp.downcase

    if user_response == "up"
      tries += 1
      lower = guess + 1
      guess = (lower + upper) / 2
    elsif user_response == "down"
      tries +=1
      upper = guess - 1
      guess = (lower + upper) / 2
    elsif user_response != "up" && user_response != "down" &&              user_response != "y"
      puts "Oops! Please enter 'up' or 'down'."
      # user_response = gets.chomp.downcase  <===== why doesn't this work?
    end
  end

  if user_response == "y"
    tries += 1
    puts "I told you I could do it! Your number  is #{guess}, and it only took #{tries} tries. Play again? Type 'y' for   yes or 'n' for no."
    
    user_response = gets.chomp.downcase

    if user_response == 'y'
      restart_game()
    elsif user_response == 'n'
      puts "Alright. Have a nice day. I'll be here if you need me."
      exit
    else
      puts "Please type 'y' for yes or 'n' for no."
    end
  end
end

puts "Hi there, would you like to play a game? I can guess the number you're thinking in 10 tries or less. Please type 'y' for yes or 'n' for no."

user_response = gets.chomp.downcase

if user_response == 'y'
  start_game()
elsif user_response == 'n'
  puts "Okay, have a nice day!"
  exit
else
  puts "Please type 'y' for yes or 'n' for no."
  user_response = gets.chomp.downcase
end