require 'sinatra'


configure :development do
  set :bind, '0.0.0.0' #ok to listen to anybody
  set :port, 3000  #use localhost:3000
end

WEAPONS = ['rock', 'paper', 'scissors']


def guess
  
  return WEAPONS.sample()
end

get '/' do
  @weapons = WEAPONS
  erb :home
end

get '/rock' do
  current_computer_guess = guess()
  if current_computer_guess == 'paper'
    @message = "You played rock!  The computer guessed: #{current_computer_guess}."
    @result = "You lose."
  elsif current_computer_guess == 'scissors'
    @message = "You played rock!  The computer guessed: #{current_computer_guess}."
    @result = "You win!"
  else
    @message = "You played rock!  The computer guessed: #{current_computer_guess}."
    @result= "Play again."
  end
  
  erb :play
end


get '/scissors' do
  current_computer_guess = guess()
  if current_computer_guess == 'paper'
    @message = "You played scissors!  The computer guessed: #{current_computer_guess}."
    @result = "You win!"
  elsif current_computer_guess == 'scissors'
    @message = "You played scissors!  The computer guessed: #{current_computer_guess}."
    @result = "Play again."
  else
    @message = "You played scissors!  The computer guessed: #{current_computer_guess}."
    @result = "You lose."
  end
  
  erb :play
  
end


get '/paper' do
    current_computer_guess = guess()
  if current_computer_guess == 'paper'
    @message = "You played paper!  The computer guessed: #{current_computer_guess}."
    @result= "Play again."
  elsif current_computer_guess == 'scissors'
    @message = "You played paper!  The computer guessed: #{current_computer_guess}."
    @result= "You lose."
  else
    @message = "You played paper!  The computer guessed: #{current_computer_guess}."
    @result= "You win!"
  end
  
  erb :play
end

