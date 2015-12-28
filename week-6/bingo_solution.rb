 #A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Select a random letter from (B, I, N, G, O).
  # Select a random number between 1 and 100.

# Check the called column for the number called.
  # Create a method that checks the column containing the random letter for the random number.
  # If the letter is B iterate through the first element in the board array.  If the number called is in the array replace it with an "X".
  # If the letter is I iterate through the second element in the board array.  If the number called is in the array replace it with an "X".
  # If the letter is N iterate through the third element in the board array.  If the number called is in the array replace it with an "X".
  # If the letter is G iterate through the fourth element in the board array.  If the number called is in the array replace it with an "X".
  # If the letter is O iterate through the fifth element in the board array.  If the number called is in the array replace it with an "X".

# Display a column to the console

# Display the board to the console (prettily)


# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ['B', 'I', 'N', 'G', 'O'].sample
    @number = rand(1..100)
    puts 'Calling #{@letter}#{@number}'
  end

  def check_board
    if @letter == 'B'
      @bingo_board.map do |row|
        if row[0] == @number
          'X'
        else
         row[0]
        end
    end
    elsif @letter == 'I'
      @bingo_board.map do |row|
        if row[1] == @number
          'X'
        else
         row[1]
        end
    end
    elsif @letter == 'N'
      @bingo_board.map do |row|
        if row[2] == @number
          'X'
        else
         row[2]
        end
    end
    elsif @letter == 'G'
      @bingo_board = @bingo_board.map do |row|
        if row[3] == @number
          'X'
        else
         row[3]
        end
    end
    else @letter == 'O'
      @bingo_board = @bingo_board.map do |row|
        if row[4] == @number
          'X'
        else
          row[4]
        end
    end
  end
      @bingo_board.map {|column| p column}
  end
end

# Refactored Solution

class BingoBoard

  COLUMNS = {
    'B' => 0,
    'I' => 1,
    'N' => 2,
    'G' => 3,
    'O' => 4
  }.freeze

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def call
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def check_board(letter, number)
    column_index = COLUMNS[letter]

    @board = board.map do |row|
      if number == row[column_index]
        'X'
      else
        row[column_index]
      end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

p new_game.call
p new_game.check_board


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# I thought it was kind of easy because it was already started for us a little you just need to go in and fill the steps for the outline.  I do think that psuedocoding is kind of difficult sometimes though.

# What are the benefits of using a class for this challenge?

# It was helpful to be able to create instance varialbes and transfer information between different methods.

# How can you access coordinates in a nested array?

# You can iterate through a nested array similarly to how you would iterate through a normal array there is just a new level and you need to also iterate over the array within the array to access that information.

# What methods did you use to access and modify the array?

# I used map to iterate over the arrays and create new arrays with any new information specifically if an 'X' was added in place of a number.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# In my refactored solution I used .freeze which allowed me to permanently set the columns with the letters that I wanted on my bingo card.

# How did you determine what should be an instance variable versus a local variable?

# In my initial solution I used all instance variables because I wanted to be able to transfer information between my methods.  In my refactored solution I local variables because all of the variables only needed to be used in the individual methods.

# What do you feel is most improved in your refactored solution?

#  I think that that the most improved element of refactored solution is creating the constant for the column and being able to iterate through that.  I think that created a more concrete solution that would have be less prone to bugs in the long run.