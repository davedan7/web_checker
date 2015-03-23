require 'sinatra'
require 'sinatra/reloader'

get '/' do
  guess   = params["guess"].to_i
  message = guess_check(guess)
  erb :index, :locals => { :number => SECRET_NUMBER, :message =>  message }
end

  SECRET_NUMBER = rand(100)

def guess_check(guess)

  if guess == SECRET_NUMBER
    "Your guess is correct! Congrats!"
  elsif (guess - SECRET_NUMBER) > 5
    "Way too high!"
  elsif (SECRET_NUMBER - guess) > 5
    "Way too low!"
  elsif (guess > SECRET_NUMBER)
    "Too High!"
  elsif (guess < SECRET_NUMBER)
    "Too low!"
  else
    "The secret number is Correct!"
  end
end

