# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Sides
# Output: Random number
# Steps:
=begin

call initialize method on new die with side number
as argument

store argument in instance variable "@sides"

automatically return random number between 1 and
number of sides

=end


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new()
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    @rand = rand(1..@sides)
    return @rand
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new()
    else
      @sides = sides
    end
  end

  attr_reader :sides

  def roll
    rand(1..@sides)
  end
end





# 4. Reflection
=begin

Q: What is an ArgumentError and why would you use one?
A: An ArgumentError occurs when you enter the incorrect number of
arguments or an incorrect argument value. Raising an ArgumentError as a
condition in your code can be useful because it can prevent a method from
running if the wrong argument is entered, even if the method can
technically run.

Q: What new Ruby methods did you implement? What challenges and successes
did you have in implementing them?
A: The only new ruby method I implemented was the random method.  This
takes a range as input and returns a random number withn that range. The
only particularly challenging part of implementing this method was
figuring out how it would fit into the instance method "roll" and how to
return the output value.

Q: What is a Ruby class?
A: A Ruby class is, essentially, a blueprint for creating Ruby objects.  A
class contains class/instance variables and class/instance methods that
help the programmer build Ruby objects.

Q: Why would you use a Ruby class?
A: Ruby classes are extremely useful when creating many different objects
that can be categorized similarly.  Classes provide a template and
special, class variables that can apply to all objects of that class.
They also allow for instance variables that apply to individual objects
that are instances of that class.

Q: What is the difference between a local variable and an instance
variable?
A: A local variable can only be created and accessed within a Ruby method.
Local variables only exist for as long as the method is running and cannot
be called elsewhere in the program. Instance variables are defined in
and instance method within a class and exist for the entirety of the
object's life. They can be accessed by that object anywhere in the
program.

Q: Where can an instance variable be used?
A: An instance variable is available to every method of a particular
class. This makes an instance variable more readily accessible than a
local variable. An instance of a class can be used anywhere in the
program where that instance is being used.

=end