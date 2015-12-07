# Factorial

# I worked on this challenge [by myself, with: Catie Stallings].


# Your Solution Below
def factorial(number)
  factor = 1
  counter = 1
    while counter < number
      factor *= (counter + 1)
    counter += 1
    end
    return factor
end
​
#Refactored later
def factorial(number)
  (1..number).reduce(1, :*)
end