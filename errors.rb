## Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# The line number in the error says 170.
# 3. What is the type of error message?
# This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# There is an unexpected end-of-input.  There is an end keyword missing.
# 5. Where is the error in the code?
# The error is between the while state ment and the closing end statement.  There needs to be another end statement.
# 6. Why did the interpreter give you this error?
# This error was given because there was not and end put with the while statement.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# The error is on line 35
# 2. What is the type of error message?
# There s an undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# That south_park is the method or variable that is not defined
# 4. Where is the error in the code?
# south_park needs to be equal to something right now it is just words and the interpreter does not know what to do with them.
# 5. Why did the interpreter give you this error?
# Because variables or methods need to be assigned to an object and this one was not.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line number 60
# 2. What is the type of error message?
# There is an undefined method
# 3. What additional information does the interpreter provide about this type of error?
# That "cartman" is the undefined method
# 4. Where is the error in the code?
# cartman needs to be equal to something right now it is just a method that does not have an object
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because there is nothing in the parenthesis.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line number 65.
# 2. What is the type of error message?
# Wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# That the error has to also do with something in line 69
# 4. Where is the error in the code?
# There error is in line 69 ('I hate Kyle')
# 5. Why did the interpreter give you this error?
# Because when the method was run it was run as being assigned to another object.  Line 69 should only have cartmans_phrase not ('I hate Kyle')

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says("screw you")

# 1. What is the line number where the error occurs?
# Line number 84.
# 2. What is the type of error message?
# Wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
# That the error also has something to do with line nubmer 88.
# 4. Where is the error in the code?
# The error in the code is on line 88. There is nothing after carman_says to run through offensive_message.
# 5. Why did the interpreter give you this error?
# This error was given because in line 88 there needs to be something to pass through offensive_message such as "cartman_says("screw you")



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105.
# 2. What is the type of error message?
# Wrong number of arguements.
# 3. What additional information does the interpreter provide about this type of error?
# The error also has something to do with line 109.
# 4. Where is the error in the code?
# The error is that there is one method calling for two arguemnts and we are only passing through one argument.
# 5. Why did the interpreter give you this error?
# The iterpreter needed to see two arguments after cartmens_lie in line 109 it should read as "cartmans_lie('A meteor the size of the earth is about to hit', 'Wyoming!')"

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 124.
# 2. What is the type of error message?
# A string can't be coered into a Fixednum.
# 3. What additional information does the interpreter provide about this type of error?
# It is a type error that occurs on line 124
# 4. Where is the error in the code?
# The * is causing the error.
# 5. Why did the interpreter give you this error?
# The interpreter gave us this error because you cannot multiply a number times a string but you can multiply a string times a number. So basically you need to flip the equation so that the string is multiplied by 5 and not 5 by the string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0.0


# 1. What is the line number where the error occurs?
# Line 139.
# 2. What is the type of error message?
# Divide by zero.
# 3. What additional information does the interpreter provide about this type of error?
# This is a zero division error that occurs on line 139.
# 4. Where is the error in the code?
# The error is the / sign.
# 5. Why did the interpreter give you this error?
# You cannot divide an integer by zero, however, you can divide an integer by the float 0.0 which fixes this error if run in the interpreter.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# Require relative
# 3. What additional information does the interpreter provide about this type of error?
# There is an error in loading the file.
# 4. Where is the error in the code?
# The error is the file name "cartmans_essay"
# 5. Why did the interpreter give you this error?
# This error was given because the file carmans_essay.md does not exist on my computer.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#The error for me that was the most difficult was probably the first argument error.  It took me a second to figure out how to analyze it and fix it.
#How did you figure out what the issue with the error was?
# I used the hints in the error message to break down the error and try and focus on the lines that were causing the problems.  Once I was able to figure out where the error was I was able to figure out how to fix it pretty easy.
#Were you able to determine why each error message happened based on the code?
# Yes.  I was able to use the terms in the error message to isolate the error in the code.
#When you encounter errors in your future code, what process will you follow to help you debug?
# I think that utilizing the error message, finding the error line number and seeing what type of error it is will help me figure out how to isolate the bug and solve it.
