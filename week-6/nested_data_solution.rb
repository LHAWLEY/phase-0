# RELEASE 2: NESTED STRUCTURE GOLF
# Worked on with Liam Mackey

# Hole 1
# Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# p array[1][1][2][0]
# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# p hash[:outer][:inner]["almost"][3]
# ============================================================

# Hole 3
# Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# p nested_data[:array][1][:hash]
# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# answer = number_array.map do |element|
#   unless
#     element.is_a?(Array)
#     element + 5
#   else
#     element.map {|sub_array_element| sub_array_element + 5}
#   end
# end

# p answer

# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

answer = startup_names.map do |element|
  unless element.is_a?(Array)
    element + "ly"
  else
    element.map do |sub_array_element|
      unless sub_array_element.is_a?(Array)
        sub_array_element + "ly"
      else
        sub_array_element.map {|sub_sub| sub_sub + "ly"}
      end
    end
  end
end

p answer

# Refactor for Release 3
# answer = number_array.flatten.map {|x| x + 5}

# p answer

# Refactor for Bonus

# answer = startup_names.flatten.map {|x| x + "ly"}

# p answer

#Reflection

# What are some general rules you can apply to nested arrays?

#  Nested arrays work similiarly to regular arrays.  It is just important to rememeber that in a nested array your index can be a whole new array of new indexes that you may also need to pull values from.

#  I think it is important to look through the array to get an idea of where everything is located and then run your code as you are writing it to make sure you are returning the right element or value.

# What are some ways you can iterate over nested arrays?

#  You can iterate over nested arrays just like regular arrays using each or map.  It is important to note that when you iterate over nested arrays you are not only iterating over each array you need to also iterate over each array in the array if there are any this is an instance when flow control comes in handy.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

#  We did not use any new methods at least none that were new to me.  We used each and map to iterate through the arrays.  When we refactored the last two releases we used .flatten which combined all of the arrays so that we could make them into one array and just manipulate one array.