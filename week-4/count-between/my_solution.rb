# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def count_between(list_of_integers, lower_bound, upper_bound)
  range = (lower_bound..upper_bound)
  list_of_integers.count { |i| range.include?(i) }
end