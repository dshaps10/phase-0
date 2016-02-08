#Full Name Greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts 'Hello there ' + first_name + ' ' + middle_name + ' ' + last_name

#Favorite Numbers

puts 'What is your favorite number?'

favorite_number = gets.to_i
better_number = favorite_number + 1


puts 'Here\'s an even better number: ' + better_number.to_s

=begin
Q: How do you define a local variable?
A: A local variable is a variable that is defined within a method and is
only avilable within that method.

Q: How do you define a method?
A: to begin, you write 'def' to signify that it is a method.  You then write the name of the method including any pertinent parameters in parentheses.  The body of the method contains the output and is followed by 'end'

Q: What is the difference between a local variable and a method?
A: A method - or function in other languages - is a set process that is saved within the program.  A local variable is a variable defined within a specific method that can only be accessed when called by that particular method.

Q: How do you run a ruby program from the commandl line?
A: You simply type the word 'ruby' followed by the name of the file and press 'return' to execute the program

Q: How do you run an RSpec file from the command line?
A: Similar to running a ruby program, an rspec file can be run by first typing 'rspec' followed by the name of the rspec file.

Q: What was confusing about this material? What made sense?
A: For a while I was confused how RSpec and spec files worked.  I couldn't understand how they knew what to check for in my code.  However, after some research and practice I learned that the spec file is linked, in a sense, to the actual ruby file and exists to tell RSpec "make sure the ruby program runs in this way".  This allows RSpec to look past simple syntactical correctness and ensure that the code is executing properly.

4.3.1 Return a Formatted Address

https://github.com/dshaps10/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods

https://github.com/dshaps10/phase-0/blob/master/week-4/math/my_solution.rb

=end