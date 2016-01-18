# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hour.

# Pseudocode
# Create a method that takes a string as input.
# Iterate over the string to reverse the individual words
# Return the reversed words.

# Initial Solution
# def reverse_words(string)
#   words = string.split('')

#   words.map! do |element|
#     element.reverse
#   end

#   words.join('')
# end


# Refactor

def reverse_words(string)
  words = string.split('')
  words.map! {|element| element.reverse}
  words.join('')
end

