class ParamsGamesController < ApplicationController


  def name
    @name = params[:name].upcase
    
    if @name.chr == 'A'
      @message = 'Hey, your name starts with the first letter of the alphabet!'
    end
  end

  def numbers
    @number = 37
    @guess = params[:guess]
    if @guess.to_i == @number
      @message = 'You guessed correctly!'
    elsif @guess.to_i < @number
      @message = 'You guessed too low, guess a higher number'
    elsif @guess.to_i > @number
      @message = 'You guessed too high, guess a lower number'
    end
      
  
  end
end
