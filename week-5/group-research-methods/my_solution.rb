# Research Methods

# # I spent [] hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 5  LeeAnne Hawley
# Initial Solution

def my_array_splitting_method(source)
  numbers = source.select {|x| x.is_a? Numeric}
  others = source.reject {|x| x.is_a? Numeric}
  [numbers, others]
end

# Refactored Solution
def my_array_splitting_method(source)
  source.group_by {|value| value.is_a? Numeric}.values.reverse
end

# Initial Solution
def my_hash_splitting_method(source, age)
  under_age = source.select {|name, pet_age| pet_age < age}.to_a
  over_age = source.reject {|name, pet_age| pet_age < age}.to_a
  [under_age, over_age]
end

# Refactored Solution
def my_hash_splitting_method(source, age)
 source.group_by {|name, pet_age| pet_age < age}.values.reverse
end

# Identify and describe the Ruby method(s) you implemented.
# I used the following methods in my solutions above:
# group_by which is an is an enumerable method that takes an array and returns a hash.
# values is a hash method that returns a new array with the values from a hash.
# reverse is an array method that returns a new array with the elements of the array in reverse order.
# select is an enumerable method that returns an array of values that equal true in a block.
# reject is an enumerable method that is the opposite of select and it retruns an array for of values that equal false in block.
# to_a is a hash method that converts a hash into a nested array of [key, value] arrays.
# is_a? is an object method that returns true or fales if the class is the class of an object.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# For my initial solution to my_array_splitting_method I created two new variables one is "numbers" and one is "other".  For numbers I called ran .select on source so that I could return an array of values.  With x.is_a? Numeric I was chosing only the values that retruned true as a Numeric.  I chose Numeric because it will work with either floats or integers, where Fixnum would only work with integers.  I did the same thing with my "others" variable execpt the opposite which is .reject.  I wanted to reject everything that was not a Numeric an put it into its own array.
#
# For my refactored solution to my_array_splitting_method I ran .group_by on source so that I could return a hash of all of the key, values from there I ran .is_a? on the the value to separate the Numeric values from everything else.  Once I had a hash that retuned the values grouped as I wanted them to I had to run .values to turn the hash back into an array and I ended up having to run .reverse to get the solution to work with the spec file.  It wanted the array of numbers first and the array of everything else second.
#
# For my initial and refactored solution for my_hash_splitting_method I did pretty much the same thing as I said above. For the initial I created two variables and ran .select and .reject to separate my key, value pairs into a one group with all the pets that are less than "age" which is 5 and one group that is all pets that are greater than the "age".  I had to run .to_a at the end of both of these variables to return the results as arrays and not hashes.
#
# For the refactored solution I did the same thing as my arrays method the only difference is that I had to separate the values differently.  I could not use .is_a? here so I had to sort based on the value of the key, value being less than or greater than "age".

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I actually struggled finding out how to put arrays in an array.  I knew that you could use flatten to take multiple arrays and condense it into one, but I had issues figuring out how to do the opposite.  The rest of the problem was not to hard once I figured out how to nest arrays.  I think that it is hard to explain your thought process to someone else especially with something as new to all of us as coding in Ruby.  I think that my explanation above gets my point across, but it could probably be more detailed to help someone who has no coding background understand what I did.
#
#