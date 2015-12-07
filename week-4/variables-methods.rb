def what_name
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your middle name?"
  middle_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  puts "Hello #{first_name} #{middle_name} #{last_name}!"
end

what_name

def favorite_number
  puts "What is your favorite number?"
  number = gets.chomp
  bigger = number.to_i + 1
  puts  bigger.to_s + ' is a bigger, better number.'
end

favorite_number

#How do you define a local variable?
# This is a variable that lives inside of a method.
#ex.) what_variable = "I am a variable"

#How do you define a method?
# A method is a piece of code that does a specified something. It tells objects what to do.
#What is the difference between a local variable and a method?
# A method holds a local variable.  Therefore, a local variable is a part of a method, but a method is not part of a local variable.
#How do you run a ruby program from the command line?
# You make sure you are in the right directory and then you type ruby followed by the file name
#How do you run an RSpec file from the command line?
# You make sure you are in the right directory and then you type rspec followed by the file name.
#What was confusing about this material? What made sense?
# I think that this section was pretty easy to understand I think that running the ruby files was pretty easy and I feel like I gained a pretty good understanding of the difference between a method and a variable and how they interact with one another.
