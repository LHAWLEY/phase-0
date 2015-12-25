# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An integer as a guess.
# Output:  A true or false if the guess matches the correct answer.
# Steps:  Create a class GuessingGame
# Create a method that takes an integer as a guess
# The guess should return an the symbol :high, :low, :correct if the guess is higher than, lower than or equal to the guess.
#  Create a method that returns true or false if guess is correct or incorrect.


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     if guess == @answer
#       @last_guess = :correct
#     elsif guess > @answer
#       @last_guess = :high
#     elsif guess < @answer
#       @last_guess = :low
#     end
#   end

#   def solved?
#     if @last_guess == :correct
#       true
#     else
#       false
#     end
#   end
# end


# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(num)
    if num == @answer
      @last_guess = :correct
    elsif num > @answer
      @last_guess = :high
    else
      @last_guess = :low
    end
  end

  def solved?
    @last_guess == :correct
  end
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# Instance variables and instance methods describe what an object knows and what an object does within a specific class.  A thing an object knows about itself is an instance variable and a thing an object does is an instance method.

# When should you use instance variables? What do they do for you?

# You can use instance variables when you want to pass information from one method to another within a class.  By capturing information from a variable in an instance variable  variables can pass information from one method to another so we do not need to repeat code to do something we have already done in another method.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

#  I used flow control to move through the different senarios of the problem.  If one condition was not met then the method moved to the next condition and if that condition was not met than the method ran the last condition to produce an answer which was transfered to the solved? method to produce a true or false answer.

# Why do you think this code requires you to return symbols?

# I think that this code required us to return symbols because symbols are easier to read, more concise and probably a best practice.

# What are the benefits of using symbols?

# Symbols do everything a string does, but they cannot change as easily as a string can.  A string is mutable and can be changed by simply adding or subtracting characters from the string a symbol is immutable or more of a constant that cannot be modified as easily (it has to be overwritten) which can help prevent bug errors.  Everything we code has an object id which takes up memory within our program.  By using symbols you also save memory in you program which makes it faster.  Every time you print a string a new object id is assigned to it.  A symbol has only one object id, no matter how many times you use it, which takes up less space in the memory on our systems.