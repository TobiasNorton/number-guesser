puts "Think of a number between 1 and 1000, and I will guess it in 10 tries or less. Ready? \n"


upper = 1000
lower = 1
guess = (lower + upper) / 2
tries = 0
user_response = ''

while user_response != "y"
  puts "Is your number #{guess}? Please say 'y' for yes, 'up' if it's higher or 'down' if it's lower."

  user_response = gets.chomp

  if user_response == "up"
    tries += 1
    lower = guess + 1
    guess = (lower + upper) / 2
  end

  if user_response == "down"
    tries +=1
    upper = guess - 1
    guess = (lower + upper) / 2
  end
end

if user_response == "y"
  puts "I told you I could do it, but you didn't believe me. Your number is #{guess}, and it only took #{tries} tries. Have a nice day."
end