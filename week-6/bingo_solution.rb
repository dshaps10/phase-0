#A Nested Array to Model a Bingo Boad Solo Challenge

#I spent [#] On this Challenge

#Release 0: Pseudocode
#Outline:

#Create a method to generate a letter (b,i,n,g,o) and a number(1-100)
  #Fill in the outline below
=begin
1. Create array with "BINGO" separated into separated strings
  - call sample method on array
  - assign to @call_column variable
2. Take range of numbers 0 to 1-100
  - call rand method on range
  - assign random number to @call_number
=end

#Check the called column for the number called.
  #fill in the outline here
=begin
1. iterate over entire bingo board
2. check to see what the random letter is
  - if it is "B" look at index 0 of each subarray, if "I" look at index 1 etc.
  - check to see if any subarray values at specified index equal random number
=end
#If the number is in the column, replace with an 'x'
  #fill in the outline here
=begin
1. Check if any number at speficied subarray index equal random number
  - if so, assign "X" to that index
  - if not, leave original value
=end
#Display a column to the console
  #fill in the outline here
=begin
1. Print the random number and letter selected
2. Print BINGO as header for board
3. Iterate through each sub array and print each index in same column
=end
#Display the board to the console(prettily)
  #fill in the outline here
=begin
1. Iterate through each subarray and print each subarray on separate line with X if necessary
=end
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

#Reflection
=begin

Q: How difficult ws the pseudocoding for this challenge? What do you think of
your pseudocoding style?
A: Pseudocoding for this challenge was particularly, well, challenging.  I
changed my code and my underlying logic several times whiel writing the actual
code and, so, I ended up having to retroactively change my pseudocode to reflect
the changes in the actual code.  Pseudocoding for this challenge has to be a
bit more vague and leave more room for interpretation.

Q: What are the benefits of using a class for this challenge?
A: A class allows you to create instance variables for the random number and
letter that you'll use in this challenge.  This means that those instance
variables are available to be used in any of the instance methods.  This is
easier than passing the output of methods to one another outside of classes.

Q: How can you access coordingates in a nested array?
A: Accessing coordingates in a nested array is similar to a regular array. However,
to find the nested element you first put the index where the nested array is
located within the main array and then the index within the nested array of that
specific value.  So if I want to 3rd element of the 2nd subarray of Array, I would
write: Array[1][2]

Q: What methods did you use to access and modify the array?
A: I didn't use any new, crazy methods.  Instead I used a standard .each do
statement to loop through the major array.  If the value picked at random matched
any of the cells in the specified column I used basic variable reassignment to
change the varaible to an "X"

Q: Give an example of a new method you learned while reviewing the ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it
called?
A: I used the inspect method when displaying the output board to the console.
Inspect is a handy method that returns a human-readable representation of the
object to the console.

Q: How did you determine what should be an instance variable vs a local variable?
A: This was a faily easy process.  If I was creating a varaible and I knew that
I would have to reference that variable elsewhere in the class then I would
create an instance variable.  This was especially useful when putting the random
letters and numbers in to separate varaiables.  In this case, I used instance
variables because I knew that my check method would need to reference those
variables.

Q: What do you feel is most improved in your refactored solution?
A: There were two major changes I made to the structure of my code. First, I
chose to use a case/swich statement instead of an in/else statement.  Case/switch
statements are useful when there are a specified and finite number of inputs -
like "BINGO".  It makes the code easier to read.  I also used a ternary expression
instead of a neste if/else statement because there was only one true and one
false condition when checking to see if the number was located on the board.

=end
