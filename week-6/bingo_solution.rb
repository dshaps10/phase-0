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
    @call_column = "O"
    @call_number = 88
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
end


#Refactored Solution

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#consider putting the display options within the class itself
new_game.call
puts "Random Call: #{new_game.call_column}, #{new_game.call_number}"
puts "\n"
p "B    I   N   G   O"
puts new_game.check.map { |block| puts block.inspect }
