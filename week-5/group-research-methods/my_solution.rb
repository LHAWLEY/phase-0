# Research Methods

# # I spent  hours on this challenge.

# i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
# my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1 - Jim O'Neal
# ARRAY FINDING METHOD

## PSEUDOCODE:
# Iterate through array.
# Take each item in array and split it into characters.
# Compare each character to the 'thing to find'.
# If the item contains the 'thing to find' then push that item into the final array.

## INITIAL SOLUTION: (AKA... Long and ugly code!!)

# def my_array_finding_method(source, thing_to_find)
#   final_array = []
#   source.each do |test|
#     temp_array = test.to_s.split(//)
#     temp_array.each do |test2|
#       if test2 == thing_to_find.to_s
#         final_array.push(test)
#       end
#     end
#   end
#   p final_array
# end

## FINAL SOLUTION:

def my_array_finding_method(source, thing_to_find)
  p final_array = source.select {|test| test.to_s.include?(thing_to_find.to_s)}
end

# HASH FINDING METHOD

## PSEUDOCODE:
# Iterate through the hash.
# Take each value and compare to the 'thing to find'.
# If the value contains the 'thing to find' then push the key into the final array.

## INITIAL SOLUTION:

# def my_hash_finding_method(source, thing_to_find)
#   final_array = []
#   source.each do |key, value|
#     if value == thing_to_find
#       final_array.push(key)
#     end
#   end
#   p final_array
# end

## FINAL SOLUTION:

def my_hash_finding_method(source, thing_to_find)
  final_answer = source.select{|key, value| value == thing_to_find}
  p final_answer.keys
end

# # Identify and describe the Ruby method(s) you implemented.
# In my array finding method, I used the .select and .include? methods.
# The .select method is kind of like a combination of .each and .push.  It iterates through the array
# and creates a new array with all of the elements that satisfy a certain condition.
# The .include? method when called on an object returns true or false if the object contains the
# argument you gave it.
# So, combining the two, you can iterate over the array using .select, ask if the given word contains
# the character using .include?, and if it does, it pushes it to a new array.
#
# I also used the .select method in a similar way on my hash.  When .select is called on a hash, it
# creates a new hash when the criteria is found to be true.  Finally I used .keys which is a method
# that simply creates a new array containing only the keys of the hash it was called on.

# # Person 2 - Chris Wong
# Pseudocode
# input: array, number of pets to add
# output: original array modified
# Steps: Check if elements of the array are an integer.
# If an integer, add given number to the integer.

# Initial Solution
# def my_array_modification_method!(source, thing_to_modify)
#   source.map! do |x|
#     if x.is_a?(Integer)
#       x += thing_to_modify
#     else x
#     end
#   end
# end

def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
    if x.is_a?(Integer) then x += thing_to_modify else x end
  end
end

# Pseudocode
# input: hash, updated age
# output: original hash modified
# Steps: Go through each value in Hash and add user given number.

# Initial Solution
# source.each do |k, v|
#     source[k] = v + thing_to_modify
#   end
# end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|k, v| source[k] = v + thing_to_modify}
end

## Identify and describe the Ruby method(s) you implemented.
# map! - Adds the given code block to each element of the original array
# .is_a? - Checks to see if the given element is an integer. Returns a boolean (true, false).
# .each - Takes each element and passes them through the given code block.

## Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# For the array I used the .map! method (destructive). This adds whatever you want to each element in the array.
# In order to not get errors with the strings in the array, I used an if else statement with the .is_a? method.
# The .is_a? method checks to see if the element is an integer or not. If it is it returns true, otherwise it's false.
# If the element is an integer, the given number is added to that element.
# For refactoring I used a For then else statement to put it all on one line.

# For the Hash I used the .each method. This was used to go through each key and value.
# For each value, the given number was added to it.

## Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that pseudocode is really helpful for determining what methods I should look for. By breaking the steps
# down I was able to figure out what I wanted to do with the array. This made it easier to search the Ruby docs for the
# appropriate method. Explaining the research renforces what I have learned and helps me remember the steps I took. This
# could help me on future challenges.


# # Person 3 - Kurt Schlueter
def my_array_sorting_method(source)
  sourceDup = source.dup
  # p sourceDup.sort_by{|word| word.to_s}

  return sourceDup.sort_by{|word| word.to_s}
end

# my_array_sorting_method(i_want_pets)

def my_array_sorting_method_hard(source)
  orderedArray = []
  characterAlphabetOrder = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z''a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

  # Loop through input array
  for x in 0..(source.length - 1)

    #If orderedArray is empty
    if x == 0
      orderedArray[0] = source[x].to_s

    #If orderedArray has components that need to be referenced
    else

      #Loop through what is currently in orderedArray
      for y in 0..(orderedArray.length - 1)

        shouldBreak = 'false'

        #Loop through each leter in current orderedArray entry
        for z in 0..((orderedArray[y].to_s).length - 1)

          #If letter in orderedArray is lower in alphabet than letter of source
          if characterAlphabetOrder.index(orderedArray[y].to_s[z]) >characterAlphabetOrder.index(source[x].to_s[z])

            #shift orderedArray from index y over 1
            orderedArray[y + 1,orderedArray.length] = orderedArray[y,orderedArray.length]
            orderedArray[y] = source[x]
            shouldBreak = 'true'
            break

          #If letter in orderedArray is higher in alphabet than letter of source and we are at end of orderedArray
          elsif characterAlphabetOrder.index(orderedArray[y].to_s[z]) < characterAlphabetOrder.index(source[x].to_s[z]) && (orderedArray.length - 1) == y

            #add to end of array
            orderedArray[y + 1] = source[x]
            shouldBreak = 'true'
            break

          #If word in orderedArray is same as word in source or is the beginning of word in source
          elsif z == ((orderedArray[y].to_s).length - 1) && characterAlphabetOrder.index(orderedArray[y].to_s[z]) == characterAlphabetOrder.index(source[x].to_s[z])

            #shift orderedArray from index y over 1
            orderedArray[y + 1,orderedArray.length] = orderedArray[y,orderedArray.length]
            orderedArray[y] = source[x]
            shouldBreak = 'true'
            break

          #If letter in orderedArray is higher in alphabet than letter of source, move on to next word for checking
          elsif characterAlphabetOrder.index(orderedArray[y].to_s[z]) < characterAlphabetOrder.index(source[x].to_s[z])

            break
          end
        end
        if shouldBreak == 'true'
          break
        end
      end
    end
  end
  # p orderedArray
  return orderedArray
end


def my_hash_sorting_method(source)
  sourceDup = source.dup
  # p sourceDup.sort_by{|key, value| value}
  return sourceDup.sort_by{|key, value| value}
end

# # Identify and describe the Ruby method(s) you implemented.
# .sort_by (http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-sort_by)
# .length (http://ruby-doc.org/core-2.2.0/Array.html#method-i-length)
# .dup (http://ruby-doc.org/core-2.2.3/Object.html#method-i-dup)
# .to_s (http://ruby-doc.org/core-2.2.3/Fixnum.html#method-i-to_s)

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# .sort_by sorts low to high as a default =>
# [2, 1, 3].sort_by{ |i| i } will return [1, 2, 3].
# you can reverse it be using .resverse or by negating the operand
# [2, 1, 3].sort_by{ |i| i }.resverse will return [3, 2, 1].
# [2, 1, 3].sort_by{ |i| -i } will return [3, 2, 1].
# You can sort by mulitple attributes. So if you want to sort all an array of people by sex first then age
# people.sort_by{ |p| [p.sex, p.age] }
# You can sort by length of string
# ['a','cat', 'LA'].sort_by{ |str| str.length } will return ['a', 'LA', 'cat'].

# Release 3: Reflect! What did you learn about researching and explaining your research to others?
# My unrefactored/original code was the my_array_sorting_method_hard method which just used loops and indexing to create the sorted array. It was interesting to see the ruby source code for .sort_by and compare it to mine. They are structured differently to say the least. I have a triple-nested for loop that I did not see in Ruby's source code so I am assuming I could have refactored mine a bit. (I am not quite sure how because I need to loop through the original array, I need to loop through each letter, and I need to loop through the array I'm creating). It is crazy to think how much time and typing we will all save because of these methods. My sort_by method took > 60 lines of code and an hour to think through and create while using the Ruby .sort_by method used just 1 line and 5 minutes. Awesome.

# The .sort_by method itself is destructive. I had to use a .dup.sort_by so that my sorting method itself wasn't destructive.

# I learned from Gary about the .split method which would have been nice to know when I was creating my new array for sorting. When I needed to drop a string in the middle I would split the array by copy and pasting using indexing. (For example if 'b' came up in the loop and I had an array ['a','c'], I would copy index 1 and on and paste them starting at index 2. ['a', , 'c']. Then I would paste 'b' into index 1. ['a','b','c']). Split would have been nice.


# # Person 4 - Gary Wong
#Pseudocode
#Check the array at each index and convert to string.
#Check if string is include thing_to_delete.
#Removes string if string == thing_to_delete
#Keep string if string != thing_to_delete.

def my_array_deletion_method!(source, thing_to_delete)
  #Refactored
  source.delete_if {|x| x.to_s.include?(thing_to_delete)}
end



def my_hash_deletion_method!(source, thing_to_delete)
  #Refactored
  source.delete_if {|x| x.to_s.include?(thing_to_delete)}
end

# Identify and describe the Ruby method(s) you implemented.
#For this exercise I use the .to_s to convert the values to a string
#and the delete_if enumerator to delete the thing_to_delete
#http://ruby-doc.org/core-2.2.0/Array.html#method-i-delete_if
#and the .include? options to check if the string for the x value is included inside.
#http://ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F
#If the value of the .include is true, the .delete_if is true and removes the source.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#include?(object) → Returns true if object is included, otherwise false.
#delete_if { |item| block } → ary : Delete values if block is true. In the example above, the .include helps check if the value is true.
#.to_s: Converts array to strings to make sure it will match our syntax of thing_to_delete.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#I learned of another possible ways of combining enumerators to help shorten the code.
#Originally I was going through with normal thinking of running through every array value and using .split to break up the array to smaller pieces. If the array.split values == thing_to_delete, the .delete_at() action worked and as I was researching I ran into .delete_if which solved the missing piece.
#The delete_if combined an if function inside which saved me more lines of code.
#There are a lot of built in methods that make the steps possible saving multiple lines if utilized properly
#
#Original code before refactor
#  answer = source
#  source.each do |index|
#    split_array = index.to_s.split(//)
#    split_array do |split_index|
#      if split_index == thing_to_delete
#          answer[index] = source.delete_at(index)
#        end
#    end
=begin
Were you successful in breaking the problem down into small steps?
I think I was successful in breaking the problem down into small steps. By psuedocoding the problem, it was easier to understand the concept I was trying to do.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes, with the pseudocode, translating the code was much easier. I initially ran into the problem of how to delete exactly the index at the exact location but with more research I found a better solution along with what I was trying to accomplish.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
My initial solution was successful but became extremely confusing trying to understand the code immediately with multiple loops. One error I ran into was forgetting to convert the file to strings.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes I found a much more efficient method of consolidating the code into one line that worked for both situations.
How readable is your solution? Did you and your pair choose descriptive variable names?
The solution if pretty straight forward and uses the already defined names.
What is the difference between destructive and non-destructive methods in your own words?
Destructive methods replaces the originally and writes over the file. Non-destruct creates a temporary copy and shows you the results. You would use non-destruct if you do not wish the change the initial elements that you started out with and destructive to replace the item completely with the new value.
=end


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