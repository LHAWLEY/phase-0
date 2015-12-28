# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Kurt Schlueter]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? An array of stings or numbers.
# What is the output? (i.e. What should the code return?)  An array of the most frequent value or values.
# What are the steps needed to solve the problem?
# Create a method that takes an array.
# Create loop that iterates over each value of the array.
# Create a new hash with the inputs of the array as keys and the values equaling how many times the array comes up with that input.
# Iterate through each hash to pick the highest frequency value.
# Output the highest frequency value or values.


# 1. Initial Solution

def mode(array)

  mode_hash = Hash.new
  for x in 0..(array.length - 1)
    if mode_hash.has_key?(array[x]) == true
      mode_hash[array[x]] = mode_hash[array[x]] + 1
    else
      mode_hash[array[x]] = 1
    end
    puts mode_hash
  end

  max_val = 0
  output_array =[]

  mode_hash.each do |key, value|

      if value > max_val
        output_array = []
        output_array[0] = key
        max_val = value

      elsif value == max_val

        output_array[output_array.length] = key
        max_val = value
      end
  end
  return output_array
end

# Refactored Solution
#  def mode(array)
#   mode_hash = array.inject(Hash.new(0)) { |key,value| key[value] += 1; key }

#   outputArray = []
#   mode_hash.each { |k, v| output_array[output_array.length] = k if v == mode_hash.values.max }

#   output_array
# end


def mode(list)
  highest_frequency = list.map { |number| list.count(number) }.max
  list.select { |number| list.count(number) == highest_frequency }.uniq
end

# Relfection

# Which data structure did you and your pair decide to implement and why?

# Yes, we were I think that we broke the problem down really well and pretty easily in to small steps.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

#I think that in both pairing session we did a really good job of breaking it down.  I am not sure if it is me or the combination of me and my pairs, but the pseudocode is pretty well broken out I think.

# What issues/successes did you run into when translating your pseudocode to code?

# We had some issues where we forgot basic things like to close brackets and what not, but nothing life changing that we could not figure out with a little bit of review.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used each to iterate through our content.  We also used inject and length in our solutuions.  I think we chose some pretty easy self explanatory methods that were not too hard to add to our refactored method.  I think they really helped to make our refactored code look a little bit more readable than our initial solutions by condensing the lines of code necessary to read.