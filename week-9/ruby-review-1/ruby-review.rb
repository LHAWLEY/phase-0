# Cipher Challenge

# I worked on this challenge [with: Raj Vashist]
# I spent [2] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") #This method takes string and makes each element of the string lower case and then splits the string into individual elements and places it into an array.
#   decoded_sentence = []  #This line creates a new variable that is equal to an empthy array.
#   cipher = {"e" => "a",  #The variable cipher is created and equal a hash of different letter key values.
#             "f" => "b",
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # This line is going through each element of the input variable
#     found_match = false  # This line creates a new variable and sets it equal to false.
#     cipher.each_key do |y| # This line is going through all of the keys fo the cipher variable.
#       if x == y  # This line is comparing the element in the input array to the key of the cipher hash.  x is coming from the input array and y is coming from the cipher hash.  Those variables are letters.
#         decoded_sentence << cipher[y] # This line is taking the key of the cipher and pushing it to the decoded_sentance array.
#         found_match = true #  This line is creating a new variable that is equal to true.
#         break  # It is breaking here to terminate the if block if a match is found.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #  This line is saying that if the element in the input is any of the above variables then we are going to do something.
#         decoded_sentence << " " # This line links to the above line, stating that if any of the above variables are found we are going to push an empthy string or a space into the array.
#         found_match = true #  This line is creating a new variable that is equal to true.
#         break  # It is breaking here to terminate the else if block if a match is found.
#       elsif (0..9).to_a.include?(x) # This line is say that if the input contains a number that is should be turned into an array.
#         decoded_sentence << x # This is saying if there is a number in the input then we want to push that number into the decoded sentence array.
#         found_match = true #  This line is creating a new variable that is equal to true.
#         break  # It is breaking here to terminate the else if block if a match is found.
#       end # This is ending the if else statement.
#     end #  This is the end to the cipher do statement.
#     if not found_match # This line stays that if a match is not found then.
#       decoded_sentence << x # We want to push the element from the input into the decoded sentence array.
#     end # This line is ending the if statement above.
#   end # This line is ending input do statement
#   decoded_sentence = decoded_sentence.join("") # This line is returning the decoded sentance with all of the elements joined together in a string.
# end # This is ending the method.

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ("a".."z").to_a

  input.each do |element|
    if alphabet.include?(element)
        index = alphabet.index(element) - 4
        index += 26 if index < 0
        decoded_sentence << alphabet[index]
      elsif element == "@" || element == "#" || element == "$" || element == "%"|| element == "^" || element == "&"|| element == "*"
        decoded_sentence << " "
      else
        decoded_sentence << element
    end
  end
  decoded_sentence = decoded_sentence.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"


#_______________________________________________________________



# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Raj Vashist].

# 2. Review the simple assert statement
# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Define an assert method.
# Have the assert method raise a failed error if output yielded is not true.
# Create a new variable name that is equal to bettysue.
# Create an assert block that will evaluate to true.
# Create an assert block that will evaluate to false and raise the error.

# 3. Copy your selected challenge here

def super_fizzbuzz(array)
  array.map! do |number|
    if ((number % 3 == 0) && (number % 5 == 0))
      number = "FizzBuzz"
    elsif (number % 3 == 0)
      number = "Fizz"
    elsif (number % 5 == 0)
      number = "Buzz"
    else
      number = number
    end
  end
end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise 'Assertion Failed!' unless yield
end

assert {super_fizzbuzz([1, 2, 3]) == [1, 2, 'Fizz']}
assert {super_fizzbuzz([7, 6, 5]) == [7, 6, 'Buzz']}
assert {super_fizzbuzz([15, 14, 13]) == ['FizzBuzz', 14, 13]}

# Reflection
# What concepts did you review in this challenge?

# In this code I reviewed how to iterate over an array and how to push elements into a new array.  I also learned a little more about assert and how that works to test if code is workign properly.  I feel like assert was such a simple concept, but for some reason I really got stuck with how to make it work.  I still get an error with my second assert statement, so I need to go back and firuge out why that is eventually.

# What is still confusing to you about Ruby?

# I would say ruby as a whole is not so confusing any more.  I think what gets me stuck is the breaking down of the problem and coding small parts little by little. I for some reason still think that I can just dive into a challenge and that proves to be the long way.

# What are you going to study to get more prepared for Phase 1?

# I would still like to go back and study classes some more and maybe make myself a cheet sheet for each of the languages just so I have some basics to refert to when I need to reference or confirm something.
