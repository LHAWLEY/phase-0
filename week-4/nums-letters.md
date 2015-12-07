What does puts do?

"puts" writes on the screen whatever comes after it.

ex.)
puts "Hello World"
=> "Hello World"

What is an integer? What is a float?

An integer is a number that does not have a decimal point (6, 20, 257).  A float is a number that does contain a decimal point (2.5, -1.8, 0.9).

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When dividing numbers containg a float you can return floats (9.0/2.0 returns 4.5).  When dividing number using integers you can only return integers (9/2 returns 4).  When dividing using integers the system will by default round down.
________________________
Hours in a year
'''ruby
puts 24 * 365
'''
Minutes in a decade
''' ruby
puts 60 * 24 * (365 * 10 + 2)
'''
________________________
How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles the additions, subtraction, multiplication and division of numbers similarly to how a calulator would.

addition +
subtraction -
multiplication *
division /

What are strings? Why and when would you use them?

Strings are goups of letters in a program.  Strings can contain letters, symbols, punctuation and spaces.  They can also be left blank which is called and empthy string.  You use strings when you want to include words or text in a program.

What are local variables? Why and when would you use them?

Local variables are variables that are inside of a method and that is where they stay.We want to use the local variables to help keep our variables separate.  We want only the local variables in a method to affect the method method and we do not want variable outside of that method getting in to the method to potentially mess it up.

How was this challenge? Did you get a good review of some of the basics?

This challenge was great.  It was a really helpful review.  I have not touched Ruby since I finished my admissions interview with DBC, months ago.  I am really glad this material was presented in conjunction with the readings.  I think the books and practice problems helped solidify my basic understanding of Ruby.

Defining Variables
https://github.com/LHAWLEY/phase-0/blob/master/week-4/defining-variables.rb

Simple String Methods
https://github.com/LHAWLEY/phase-0/blob/master/week-4/simple-string.rb

Local Variables and Basic Arithmatical Operation
https://github.com/LHAWLEY/phase-0/blob/master/week-4/basic-math.rb