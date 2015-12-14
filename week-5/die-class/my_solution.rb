# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("YOU NEED ONE OR MORE SIDES.") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 3. Refactored Solution

class Die
  MIN_SIDE_VALUE = 1
  MIN_SIDE_ERROR = 'YOU NEED ONE OR MORE SIDES.'

  attr_reader :sides

  def initialize(sides)
    raise ArgumentError.new(MIN_SIDE_ERROR) if sides < MIN_SIDE_VALUE
    @sides = sides
  end

  def roll
    rand(MIN_SIDE_VALUE..@sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError is an error that is raised when the number of arguments are not right or when the conditions are not met for the code to be run.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I used rand when rolling the die to get a random number as a result.  I think it was pretty easy.  The method was used like any other and it was pretty easy to find a method that would give me a random number within a specific range.

# What is a Ruby class?

# A class and object like everything in Ruby.

# Why would you use a Ruby class?

# You would use a class when you want methods to work on specific objects.  By creating a class you can add specific methods to that class and those methods can be used on only those class objects.  That is kind of a wordy response, but I think it gets the point accross.

# What is the difference between a local variable and an instance variable?

# A local variable is a variable that is housed inside of a method and can only be used in that methond.  An instance variable is a variable that is defined in a class.  An instance variable starts with an @ symbol and a local variable does not.

# Where can an instance variable be used?

# Instance variables can be used in methods with in a specific class.