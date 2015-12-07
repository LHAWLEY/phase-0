# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below


# Your Solution Below
def count_between(integers, lower_bound, upper_bound)
  range = (lower_bound..upper_bound)
  integers.count { |i| range.include?(i) }
end