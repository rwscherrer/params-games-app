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
  @message = 'You did not guess a number between 1 and 100' 
  
  end

  def url
    @message = params[:wildcard]
  end

  def url_guess_number
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
  end

  def get_form
  
  end
  
 

  def send_form
    
    guess = params[:guess]
    if guess
      guess = guess.to_i
      correct_answer = 32

      if guess == correct_answer
        @message = "You Did It!!!!"
      elsif guess < 1 || guess > 100
        @message = "You're out of bounds, Guy."
      elsif guess < correct_answer
        @message = "Guess higher, buddy."
      elsif guess > correct_answer
        @message = "Guess lower, friend"
      end
    else
      @message = "You obviously need to put something in the URL."
    end
  end
    

end
