#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:  A name
# Output:
# Steps:

class NameData

  attr_reader :name

  def initialize
    @name = "LeeAnne"
  end
end


class Greetings

  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello, #{@namedata.name}!  How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


# Reflections

#Release #1:

# What are these methods doing?

# These methods return or modify the age, name and occupation variables.

# How are they modifying or returning the value instance variables?

# They are modifying the return value by creating a new instance variable and running it through a new geter method that updates that value.


#Release #2:

# What changed between the last release and this release?

# An attribute reader for age was added for age.

# What was replaced?

# The what_is_age method was no longer needed because of the attribute reader.

# Is the code simpler than the last?

#  Yes, there is less code and it is easier to read.


#Release #3:

# What changed between the last release and this release?

# An attribute writer was added for age.

# What was repalaced?

# The change_my_age method was no longer needed because of the attribute writer.

# Is this code simpler than the last?

#  Yes, its is shorter and simpler to read.


# Reflection Questions

# What is a reader method?

#  It is also known as a getter method and it is one line of code that takes the place of a method that reads an attribute.  It only returns the value of something.

# Ex.) attr_reader :age
# Does the same thing as:
# def age
#  @age
# end

# What is a writer method?

#  Is also known as a setter method and it is a line of code that takes the place of a method that takes input and for an attribute.  It only allows you to change the value of something, but you cannot read it.

# Ex.) attr_writer :age
# Does the same thing as:
# def age(value)
#  @age = age
# end

# What do the attr methods do for you?

#  attr methods allow us to create a shortcut by creating a symbol for a method allowing us to use the symbol instead of multiple lines of code, thereby shortening our code and making it more concise.

# Should you always use an accessor to cover your bases? Why or why not?

#  No you should not because it can make your code confusing.  You should only use accsssor when you want to be able to read and write a variable, otherwise you should use the individual read and write methods.

# What is confusing to you about these methods?

#  These methods are not too bad, especially in a challenge like this when it is obvious we should be using them.  I think that it will be hard to remember to use them outside of this challenge and that for me they will probably be added during the refactoring process once I stop and realize that I have room to shorten my code.