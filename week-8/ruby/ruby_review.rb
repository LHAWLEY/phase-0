# I worked on this challenge [by myself].
# This challenge took me [2] hours.


# Pseudocode
# Create a method that takes an array of integers as input.
# If an integer in the array is evenly divisible by 3 replace it with the word "Fizz".
# If an integer in the array is evenly divisible by 5 replace it with the word "Buzz".
# If an integer in the array is evenly divisible by 15 replace it with the word "FizzBuzz".
# If none of the above statements are true the number stays in the array.


# def super_fizzbuzz(array)
#   array.map! do |number|
#     if ((number % 3 == 0) && (number % 5 == 0))
#       number = "FizzBuzz"
#     elsif (number % 3 == 0)
#       number = "Fizz"
#     elsif (number % 5 == 0)
#       number = "Buzz"
#     else
#       number = number
#     end
#   end
# end

# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |num|
    fizz = (num % 3 == 0)
    buzz = (num % 5 == 0)

    case
     when fizz && buzz then num ='FizzBuzz'
     when fizz then num = 'Fizz'
     when buzz then num = 'Buzz'
     else num
    end
  end
end


# Reflection
# What concepts did you review or learn in this challenge?

# I reviewed how to iterate though date using if/else if/else statements.  I also learned how to create a case using fixed varaiables in that case.  I also practiced using Ruby operators.

# What is still confusing to you about Ruby?

# I still think that I struggle with the logic behind the problem and what the best way to solve a problem would be.  I have a really bad habit of starting down one path, getting suck or confused and then heading down another path.  I think that I need to commit to one way of solving the problem and then maybe try another after I have a solution that works.  I understand the different consepts and syntax.  I just think I need to practice a lot more with them.

# What are you going to study to get more prepared for Phase 1?

#  I am going to do some more of the Ruby review challenges so that I become more comfortable with all of the consepts that we have learned so far.  I would like to have some more things memorized and not have to rely so much on reseach by the end of next week.






