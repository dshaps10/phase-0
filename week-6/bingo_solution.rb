#A Nested Array to Model a Bingo Boad Solo Challenge

#I spent [#] On this Challenge

#Release 0: Pseudocode
#Outline:

#Create a method to generate a letter (b,i,n,g,o) and a number(1-100)
  #Fill in the outline below

#Check the called column for the number called.
  #fill in the outline here

#If the number is in the column, replace with an 'x'
  #fill in the outline here

#Display a column to the console
  #fill in the outline here

#Display the board to the console(prettily)
  #fill in the outline here

#Initial Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  attr_reader :call_column
  attr_reader :call_number

  def call
    @call_column = ["B", "I", "N", "G", "O"].sample
    @call_number = rand(100)
  end

#Consider case statement when refactoring
  def check
    call
    @bingo_board.each do |sub_array|
      if @call_column == "B"
        if sub_array[0] == @call_number
          sub_array[0] = "X"
        end
      elsif @call_column == "I"
        if sub_array[1] == @call_number
          sub_array[1] = "X"
        end
      elsif @call_column == "N"
        if sub_array[2] == @call_number
          sub_array[2] = "X"
        end
      elsif @call_column == "G"
        if sub_array[3] == @call_number
          sub_array[3] = "X"
        end
      elsif @call_column == "O"
        if sub_array[4] == @call_number
          sub_array[4] = "X"
        end
      end
    end
  end

  def display
    puts "Random Call: #{@call_column}, #{@call_number}"
    puts "\n"
    p "B    I   N   G   O"
    puts self.check.map { |block| puts block.inspect }
  end
end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display

#Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  attr_reader :call_column
  attr_reader :call_number

  def call
    #I put the Letter and number in different variables to make them easier to reference in other instance methods
    @call_column = ["B", "I", "N", "G", "O"].sample
    @call_number = rand(100)
  end

#Case statement will replace the if/then statement used above and provide a cleaner way for the program to scan through a finite list of search possibilities
  def check
    call
    @bingo_board.each do |sub_array|
    case @call_column
      when "B"
        sub_array[0] == @call_number ? sub_array[0] = "X" : false
      when "I"
        sub_array[1] == @call_number ? sub_array[1] = "X" : false
      when "N"
        sub_array[2] == @call_number ? sub_array[2] = "X" : false
      when "G"
        sub_array[3] == @call_number ? sub_array[3] = "X" : false
      when "O"
        sub_array[4] == @call_number ? sub_array[4] = "X" : false
      else
        puts "Not there!"
      end
    end
  end

#display method will print out a "pretty" board to the console

  def display
    puts "Random Call: #{@call_column}, #{@call_number}"
    puts "\n"
    p "B    I   N   G   O"
    puts self.check.map { |block| puts block.inspect }
  end
end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display
