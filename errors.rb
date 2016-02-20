# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expected keyword_end after last line
# 5. Where is the error in the code?
# the error occurs after the end of the comment on line 170
# 6. Why did the interpreter give you this error?
# there is only one end statement, signifying the end of the method while there should be another end statement at the end of the nested while loop

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# there is an undefined local variable or method 'sout_park'
# 4. Where is the error in the code?
# it refers to the entirety of line 35 (south_park)
# 5. Why did the interpreter give you this error?
# the program is attempting to call a variable or method that has not yet been defined.  Therefore, ruby is confused because it is looking for a variable or method definition and can't find one.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter says that the method, cartman(), is undefined
# 4. Where is the error in the code?
# the error refers to the entirety of line 50
# 5. Why did the interpreter give you this error?
# similar to the last error, the program is trying to call a method that has not yet been defined.  Therefore, ruby is confused because it is trying to look for a method definition and can't find one.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter says the method definition contains the wrong number of arguments
# 4. Where is the error in the code?
# the error occurs after the definition of the method name where parentheses should be placed.
# 5. Why did the interpreter give you this error?
# when the method is called it is given an argument of 'I hate Kyle', yet the method definition doesn't allow for any arguments.  In order for the method call to work, the definition would have to be updated to accept an argument or the argument in the method call would have to be deleted.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter expected 1 argument and received 0
# 4. Where is the error in the code?
# there is no argument specified in the method call on line 88
# 5. Why did the interpreter give you this error?
# this is the opposite of the last question.  In this case, the method expects 1 argument when called, however the method call doesn't include any arguments, hence the error.

# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# 103
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter expected 2 arguments in the method call and only received 1
# 4. Where is the error in the code?
# the method call on line 107 doesn't have a second argument
# 5. Why did the interpreter give you this error?
# similar to the last two errors, the method specifies and input of 2 arguments when calling the method, however, when the method is called, there is only 1 argument listed.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 122
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter cannot multiply and integer by a string
# 4. Where is the error in the code?
# the multiplcation method is the source of the error
# 5. Why did the interpreter give you this error?
# the interpreter cannot multiply a number by a string only by another numeric data type.  However, if this equation was reversed then you could multiply the string by 5 and have the string printed out 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 137
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# the number is being divided by zero
# 4. Where is the error in the code?
# the '/' method is the source of the error
# 5. Why did the interpreter give you this error?
# you cannot divide a number by zero as it will be undefined.  either the '/' method will have to be changed or the 0 will have to be replaced

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 153
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter cannot load this file
# 4. Where is the error in the code?
# the error occurs at the 'require_relative' statement
# 5. Why did the interpreter give you this error?
# I don't have the 'cartmans_essay.md' file located on my machine so the program is trying to reference a file that does not exist. Cartman also never hands in his homework which is similarly problematic


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Q: Which error was the most difficult to read?
A: The error referring to the method with the nested while loop was
difficult to understand at first.  I couldn't figure out why the error
was referencing the comment on the last line of the file until I realized
that the lack of a proper end statement at the end of the nested while
loop meant that the method was, eseentially, taking up the remainder of
the program and would continue to unless it was properly ended.

Q: How did you figure out what the issue with the error was?
A: After spending much time being exasperated a realized the the error
would only be referencing the end of the file if the method was not
properly ended.  After realizing that, I was able to finally notice that
it contained one fewer 'end' statement than required.

Q: Were you able to determine why each error message happened based on
the code?
A: The error messages actually made it pretty obvious why each particular
error was occuring, both because of the name of the error as well as
because of the explanaation by the interpreter.

Q: When you encounter errors in your future code, what process will you
follow to help you debug?
A: My first step is to look at both the line where the error is occuring as well as the error type.  This allows me to put the error into context and deduce what the problem is.  For instance, if the error is referencing a line within a method that I'm defining and the error type is ArgumentError, then I can reasonably assume that I have allowed for the incorrect number of arguments in my method and that that should be changed.

=end