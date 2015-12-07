# Leap Years

# I worked on this challenge [by myself, with: Jordan Fox].


# Your Solution Below
def leap_year? (years)
  leap = years % 4
  leaps = years % 100
  leaped = years % 400
  if leap == 0 && leaps == 0 && leaped != 0
    return false
  elsif leap == 0 && leaps != 0
    return true
  elsif leap == 0 && leaps == 0 && leaped == 0
    return true
  else
    return false
  end
end