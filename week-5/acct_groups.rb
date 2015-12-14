# Pseudocode
# Create a list of people in my cohort.
# Go through the list to see how many people there are
# Figure out if the total list is divisible by 4 or 5.
# Return groups of at least 5, 4 or 3 people.

# Initial solution
names = [
  "Alex Forger",
  "Alexander Nelson",
  "Karen Ball",
  "Christopher Bovio",
  "Gino Paul Capio",
  "Jonathan Chin",
  "Claire Samuels",
  "Ray Curran",
  "David Louie",
  "David Spivey",
  "Max Davis",
  "Devin Mandelbaum",
  "Afton Downey",
  "Emmanuel",
  "Jordan Fox",
  "Rebecca Gahart",
  "Gary Wong",
  "Hodges Glenn",
  "Everett Golden",
  "Christopher Graf",
  "Alana Hanson",
  "LeeAnne Hawley",
  "Sabri helal",
  "Thomas Huang",
  "Jeff Schneider",
  "Jillian Dunleavy",
  "Kevin Huang",
  "Khamla Phimmachack",
  "KT Khoo",
  "Andrew s Kim",
  "Joseph Kim",
  "Michal Klimek",
  "Nathan knockeart",
  "Brigitte Kozena",
  "Donald Lang",
  "Tiffany Larson",
  "Liam Mackey",
  "Johanna Lonn",
  "Charlotte Manetta",
  "Tyler McKenzie",
  "Katie Meyer",
  "Meagan Munch",
  "Lucas Nagle",
  "Lydia Nash",
  "Jovanka Nikolovski",
  "James O'Neal",
  "Greg Park",
  "Patrick Oliphant",
  "Peter Lowe",
  "Lauren Reid",
  "Roche Janken",
  "David Rothschild",
  "Susan Savariar",
  "Kurt Schlueter",
  "Sharon Claitor",
  "Marshall Sosland",
  "Catie Stallings",
  "Steven King",
  "Eric Tenza",
  "Timur Catakli",
  "Todd Seller",
  "Dan Turcza",
  "Lindsey Ullman",
  "Raj Vashist",
  "Violet Dang",
  "Chris Wong",
  "Angelika Yoder",
  "Michelle Zulli"
]

def make_accountability_group(names)
  i = 0
  while i < names.length
    p names.slice(i, 4)
    i += 4
  end
end

# Refactored Solution

def make_accountability_group(names)
  i = 0
  names.shuffle!
  while i < names.length
    p names.slice(i, 4)
    i += 4
  end
end

def make_accountability_group(names)
  names.shuffle.each_slice(4).to_a
end

# def make_accountability_group(names)
#   group_size = 3

#   3.upto(5).each do |number|
#     if names.length % number == 0
#       group_size = number
#     end
#   end

#   names.shuffle.each_slice(group_size).to_a
# end


# driver code

p 'it breaks names into even groups of four'
accountability_groups = make_accountability_group(names)
accountability_groups.each do |group|
  p group.length == 4
end

p 'it shuffles the groups each time its run'
first_grouping = make_accountability_group(names)
second_grouping = make_accountability_group(names)
p first_grouping != second_grouping


# Reflection

# What was the most interesting and most difficult part of this challenge?

# It was intersting to try to find new methods to impliment that would take equal groups and do so at random.  I thought that it was kind of difficult or I guess time consuming to get a list of all of the names of people into a list.  That took a bit of time.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I do, I think that pseudocode is what you make it the more broken down it is the easier it is for you to break the problem out in code.

# Was your approach for automating this task a good solution? What could have made it even better?

# I automated this solution with slice.  Which took every four names in the list and grouped them together.  I am not sure what could have been done better, but maybe I could have used a different method to do it differently.

# What data structure did you decide to store the accountability groups in and why?

# I chose to store them in an array because they were just a list of names it seemed better than storing them in a hash

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned that there are a lot of ways to solve a problem with methods if you use them right and understand them.  There are probably 10 other ways I could have solved this problem using methods and I think that is really exciting.  For this solution I used slice and shuffle quite a lot to split my groups up evenly and randomly.

