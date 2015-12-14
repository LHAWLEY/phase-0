#Donald Lang
#Katy Duncan
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a method that take parameters of an array
  # set default quantity of 0 using hash
  # print the list to the console [can you use one of your other methods here?]
# output: a hash of the grocery list

# Method to add an item to a list
# input: item name, list and optional quantity
# steps: add new item to the list with an optional quantity
# output: the new list

# Method to remove an item from the list
# input: list and item
# steps: removing the item from the list
# output: The modified list

# Method to update the quantity of an item
# input: list, item and quantity
# steps: access the item and change the quantity
# output: the list with the modified quantity

# Method to print a list and make it look pretty
# input: the list
# steps: print the list and the quantities with in a neat and orderly fashion.
#output: The beautified list.

def new_list(tasty_food)
  grocery_list = Hash.new(0)
  groceries=tasty_food.split(" ")

  groceries.each do |food|
    grocery_list[food]= 0
  end
  return grocery_list
end

def new_item(add_item, quantity, grocery_list)
  grocery_list[add_item]=quantity
  p grocery_list
end

def remove_list(item, grocery_list)
  grocery_list.delete(item)
  p grocery_list
end

def add_quantity(item, quantity, grocery_list)
  grocery_list[item] = quantity
  p grocery_list
end

def pritify(grocery_list)
  grocery_list.each do |key, value|
    p key + " " + value.to_s
  end
end

my_list = new_list("carrots tamales kombucha banana")

new_item("walnuts", 3, my_list)
remove_list("carrots", my_list)
add_quantity("carrots", 6, my_list)
pritify (my_list)

# Reflection
# What did you learn about pseudocode from working on this challenge?

# Pseudocode is a huge part of coding with a pair, it helpd you to make sure that you are on the same page before you go into actually coding.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

#I think that hashes were a little easier because we were able to separate specific keys and values a little easier in our lists.  I think an array would have worked, but not a smoothly.

# What does a method return?

# A method returns the last line of code to be run.

# What kind of things can you pass into methods as arguments?

# Any object can be an argument that is passed into a method.

# How can you pass information between methods?

#  By capturing data from a previous method as a new variable and then using that new variable to communicate the information into a new method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Iterating through a hash was solidified for me in this challenges as well as adding and removing items from a hash.  It was kind of a struggle, but I think that I uderstand all of the concepts better, it is just going to take a lot of practice to get everything down.