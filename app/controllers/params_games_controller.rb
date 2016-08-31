class ParamsGamesController < ApplicationController


  def name
    
    if @name != nil
      @name = params[:name].upcase
      if @name.chr == 'A'
        @message = 'Hey, your name starts with the first letter of the alphabet!'
      end
    end
  end

  def numbers
    @number = 37
    @guess = params[:guess]
    if @guess != nil
      if @guess.to_i == @number
        @message = 'You guessed correctly!'
      elsif @guess.to_i < @number
        @message = 'You guessed too low, guess a higher number'
      elsif @guess.to_i > @number
        @message = 'You guessed too high, guess a lower number'
      end
    end
    @message = 'You did not guess a number' 
  
  end
end
