# Pad an Array

# I worked on this challenge [by myself, with: Meagan Munch]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  An array, a number and an object.
# What is the output? (i.e. What should the code return?) A new array that is the length of the number input with object input in positions that need to be filled.
# What are the steps needed to solve the problem ?
# Define a method pad and pad!
# Have the method accept three values: array_1, number, object.
# Create a new array: new_array.
# Put each item in array_1 into new_array.
# While new_array's length is less than number, add object to new_array.
# While loop ends when new_array has the number of objects in it.
# Return new_array.


# 1. Initial Solution
def pad(array, min_size, value = nil)
  array_new = [ ]
  array.each do |x|
    array_new.push(x)
  end
  while array_new.length < min_size
    array_new.push(value)
  end
  return array_new
end

def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end


# 3. Refactored Solution

def pad(array, min_size, value = nil)
  array_new = array.collect {|x| x}
  while array_new.length < min_size
    array_new.push(value)
  end
  return array_new
end

# pad! looked good to us and we decided not to refactor further

def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes, we were I think that we broke the problem down really well and pretty easily in to small steps.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# I think our pseudocode was concise enough that we did not have too many issue breaking down the problem in to actual code.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# Yes, it was I think if I remember correctly we had to tweek a few things as we moved through, but there were no major errors in our initial solution that we were not able to solve.  I think that our initial solution passed the test because we solved the problem in basic baby steps first and I think that our pseudocode really helped with that.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

#We used collect which goes through each element and and invokes a block.  And creates a new array containing the values returned by the block.

# How readable is your solution? Did you and your pair choose descriptive variable names?

#I think our solution is pretty readable, but I think that we could have also had a more descriptive word for “x” maybe

# What is the difference between destructive and non-destructive methods in your own words?

# A non-destructive method returns a new array without changing the old array.  A destructive method returns a new array and overrides/modifies the old array so that it no longer exists in its original form.