# Your Names
# 1) LeeAnne Hawley
# 2) Sabri Helal


def serving_size_calc(item, num_of_servings)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item} is not a valid input") unless menu[item]

  serving_size = menu[item]
  remaining_hungry_people = num_of_servings % serving_size
  remaining_servings = num_of_servings / serving_size
  message = "Calculations complete: Buy #{remaining_servings} #{item}(s)"

  if remaining_hungry_people == 0
    message
  elsif remaining_hungry_people > menu['cake'] - 1
    "#{message}, 1 cake and #{remaining_hungry_people % menu['cake']} cookie(s)"
  else
    "#{message} and #{remaining_hungry_people % serving_size} cookie(s)"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("pie", 10)
p  serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#  What did you learn about making code readable by working on this challenge?

#  I learned that it is important to have descriptive varaiables and element names.  I know it took us a moment to figure out if the method should be calculating calories or servings.  I also learned that it is important to probably make comments in your code if not for yourself for other people who may have to look at it in the future.

#  Did you learn any new methods? What did you learn about them?

#  We did not really use any new methods in this assignment.  We used some arithmatic which was a nice refresher and we practiced isolating values in a hash.

#  What did you learn about accessing data in hashes?

#  I learned that you can access specific keys or values of a hash and isoloate those items to be used independently from the hash in a method.

#  What concepts were solidified when working through this challenge?

#  Things that were solidified for me during this challenge were the importance of making clear, concise and descriptive code.  I think it is important to keep in mind that your code should be able to be read by anyone and easliy understood.