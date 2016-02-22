# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: random side from newly created Die object
# Steps:
=begin
1. Use Die#new method on to create new Die Object
  - If array is empty raise ArgumentError
  - Else, create new Die Instance
2. Use Die#roll to pick a random side of Die object
  - Define Die#roll method, taking a Die instance as an argument
  - Pick random array element (side) and store it in @random variable
  - return random variable
=end
# Initial Solution

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new()
    else
      @labels = labels
    end
  end

  def labels
    @labels
  end

  def sides
    @sides = @labels.length
    return @sides
  end

  def roll
    @sample = @labels.sample
    return @sample
  end
end

p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# Refactored Solution
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new()
    else
      @labels = labels
    end
  end

  attr_reader :labels
  #use an attribute reader method as a shortcut reader method

  def sides
    @sides = @labels.length
    #no need to create another instance variable; also use implicit return
  end

  def roll
    @labels.sample
    #same comment as above
  end
end

# Reflection
=begin

Q: What were the main differences between this die class and the last one
you created in terms of implementation? Did you need to changes much logic
to get this to work?
A: In the previous Die class the number of sides were defined explitly
when creating an instance of the class.  This mean that the @sides instance
variable could be easily created by simply taking the value of the
initialize method's argument. In this case, however, the argument for the
initialize method was an array, which mean that sides had to be determined
implicitly by taking the length of the array.  Additionally, picking a
random side didn't involve the code picking a random number from 1 to the
total number of sides that the programmer chose.  Instead, the instance
method in this die class picked a random array element from @labels
using the Array#sample method.

Q: What does this exercise teach you about making code that is easily
changeable or modifiable?
A: It teaches you to make the class simple, with as little hardcoding as
possible.  The class should do most of the work of constructing the object
through the use of instance method, requiring the programmer to do minimal
work when creating a class instance. The previous Die class was too
static, and required the programmer to expliticly say how many sides the
die contained, whereas this version of the class allows that the be
calculated automatically by the Die#roll instance method. This dynamism
allows for maximum code reusability and easy modification.

Q: What new methods did you learn when working on this challenge, if any?
A: I didn't really use any new methods, however the construction of the
Die#roll instance method gave me more practice with the Array#sample
method.

Q: What concepts about classes were you able to solidify in this
challenge?
A: It became more clear to me why you need to create an attribute reader
or another type of accessor method for the instance variables defined by
the initialize method.  This allows for the properties of the class
instance to be easily retrieved. This was a confusing concept to me last
week. Additionally, The idea of using instance methods to automate certain
calculations became much more evident.  I can see how creating classes
and using instance methods over singleton methods allows the programmer
to store calculations that will be used oftne in the class so the methods
do not need to be continuously called.
=end