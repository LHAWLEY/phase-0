# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:  Meagan Munch].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: True or false
# Steps: Create a credit card class.
# Credit card class takes a credit card number argument on initialization.
# Create an ArgumentError if credit card is not equal to 16 digits.
# Write a method that converts a credit card number to an array
# Write a method that doubles every other value of the array except for the last digit.
# Write a method that flattens the array in digits and then sums all of the untouched and doubled digits.
# Write a method that checks to see if sum is a multiple of 10.
# Return a true or false answer.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(digits)
#     if digits.to_s.length != 16
#       raise ArgumentError, "Credit card must have 16 digits"
#     else
#       @digits = digits
#     end
#   end

#   def check_card
#     array = @digits.to_s.split""
#     array.each_with_index do |num, index|
#       if index%2 != 0
#         array[index] = num.to_i
#       else
#         array[index] = (num.to_i) * 2
#       end
#     end

#     array = array.join.split""
#     array = array.map! {|x| x.to_i}
#     sum_array = array.inject{ |sum, n| sum + n}

#     if sum_array % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution
class CreditCard
  ERROR = 'Credit card must have 16 digits'
  VALID_CARD_LENGTH = 16

  def initialize(digits)
    @digits = digits.to_s
    raise ArgumentError, ERROR unless @digits.length == VALID_CARD_LENGTH
  end

  def check_card
    result = multiply_even_indices_by_two(@digits.split(''))
    result = split_into_digits(result)
    result = sum_all_numbers(result)
    is_divisible_by_ten?(result)
  end

  private

  def multiply_even_indices_by_two(numbers)
    numbers.each_with_index.map do |digit, index|
      if index.even?
        digit.to_i * 2
      else
        digit
      end
    end
  end

  def sum_all_numbers(numbers)
    numbers.map(&:to_i).inject(:+)
  end

  def is_divisible_by_ten?(number)
    number % 10 == 0
  end

  def split_into_digits(numbers)
    numbers.join.split('')
  end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# It was difficult for us to manage all of the steps in this challenge.  We also struggled with how to iterate over the arrays in a way that would allow us to target only the even indexes.  I think that as a pair we made this challenge a little more difficult than it had to be at times, but we worked well through it and the results were a solution that worked pretty well.

# What new methods did you find to help you when you refactored?

#  When I went back and refactored I made my ArgumentError and credit card length constants.  These two items will not change within this class and if they did it is easier to change it in one place rather than all throughout class code.

# As a pair we had wanted to use map with index, but that was not a thing at least not the way we have both used it in the past.  So when I went back and refactored I learned that we could run each with index and then call map on that to get the results we originally wanted and shorten our code.

#  Finally to shorten my code I created a method that took and number to see if it was divisible by 10.  Then all I had to do is call that method with a ? on the result of my check_card method and I was automatically given a true false.  This got rid of about three lines of code from our original solution.

#  What concepts or learnings were you able to solidify in this challenge?

#  I think this challenge helped to solidify a lot of the class structure issues I had been having.  It was nice to talk through class with another person and also work through a problem with so many steps with another person.  I think this challenge took a lot of the basics we had learned and pushed us to think about them in a different way which was nice.