# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) An integer string with commas.
# What are the steps needed to solve the problem?
# Create a string of numbers.
# Separate those numbers
# Insert a comma if the string is divisible by 3.
#1,000,000,000; 1,000,000; 1,000; 100


# 1. Initial Solution
def separate_comma(num)
  string_value = num.to_s.reverse
  while string_value.length < 4
    return string_value.reverse
  end

  if string_value.length >= 3 && string_value.length <= 6
    return string_value.insert(3, ",").reverse
  elsif string_value.length >= 7 && string_value.length <= 9
    return string_value.insert(6, ",").insert(3, ",").reverse
  end
end

# 2. Refactored Solutions
# def separate_comma(num)
#   string_value = num.to_s.reverse

#   if string_value.length <= 3
#     string_value
#   elsif string_value.length <= 6
#     string_value.insert(3, ",")
#   elsif string_value.length <= 9
#     string_value.insert(6, ",").insert(3, ",")
#   end

#   string_value.reverse
# end

# def separate_comma(num)
#   string_value = num.to_s.reverse
#   index = 0
#   new_string = ''

#   string_value.each_char do |char|
#     if index % 3 == 2 && string_value[index + 1]
#       new_string += char + ','
#     else
#       new_string += char
#     end
#     index += 1
#   end

#   new_string.reverse
# end

# def separate_comma(num)
#   array = num.to_s.reverse.split('')
#   new_string = ''

#   array.each_with_index do |char, index|
#     if index % 3 == 2 && string_value[index + 1]
#       new_string += char + ','
#     else
#       new_string += char
#     end
#   end
# end

def separate_comma(num)
  array = num.to_s.reverse.split('')
  new_string = ''

  array.each_slice(3).each_with_index do |slice, index|
    new_string += slice.join
    new_string += ',' if slice.length == 3 && array[(index * 3) + 3]
  end

  new_string.reverse
end


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?

# I new that I had to figure out the best way to insert a comma in a string.  I thought about turning it into an array originally but then I left that idea for something that at the time seemed simpler which is how I ended up with my initial solution.

# Was your pseudocode effective in helping you build a successful initial solution?

# I do.  I think sometimes I get kind of lazy with it, it could always be more detailed, but it gave me an outline on how to attack the problem in its most basic form.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I used each_char, split, slice and join.  All were ideas I originally had to use in my inital solution, but was not sure how to just insert them so I chose to do it the way I did for my initial solution.  I found that there are a lot of different methods that could have been used in this solution to solve the problem.  I think that all the methods I used got my code to do the same thing in the end just different ways.

# How did you initially iterate through the data structure?

#  I used a while, if and else statement to iterate through my data.  Originially it wa the only way I could mentally break it down.  I then used the length to sort my data so that I could add the appropriate number of commas.

# Do you feel your refactored solution is more readable than your initial solution? Why?

#I think that my refactored solutions are more more concise and they do more.  They work for any number not just numbers with one comma.