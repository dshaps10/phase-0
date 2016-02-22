# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: correct answer and guess
# Output: message saying whether guess equals answer
# Steps:
=begin
1. create instance of GuessingGame class with correct answer as arg
2. guess will be chosen at random or by programmer
3. if guess equals correct answer, message will display correct
  - if guess less than correct answer, message will display low
  - if guess greater than correct answer, message will display high
4. if guess is correct, solved? method will display true
  - else false
=end
# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def answer
    @answer
  end

  def guess (guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  attr_reader :answer


  def guess (guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end


# Reflection
=begin

Q: How do instance variables and methods represent the characteristics and
behaviors (actions) of a real-world object?
A: Classes are often described to be like blueprints.  The provide a
framework for constructing objects, much like a blueprint for building a
house.  The instance methods and variables that make up the class are
the finer details of the blueprints, the kitchen, bedroom, etc. To use a
rather imperfect analogy, when a developer builds a housing development,
they often have a template blueprint so that most of the houses look
the same.  Classes work much in the same way.

Q: When should you use instance variables? What do they do for you?
A: Instance variables are default characteristics that make up a class.
They must be defined as arguments when constructing an instance of that
class.  Instance variables are especially useful when referencing them
in several different instance methods. Whereas singleton methods require
you to pass output from other input into the method by putting the method
call into a variable, instance variables eliminate the need for this
because they can be referenced anywhere in a class.

Q: Explain how to use flow control. Did you have any trouble using it in
this challenge? If so what did you struggle with?
A: I used flow control to evaluate whether the @guess instance variable
was equal to the @answer instance variabele. Using several conditions
not only allowed me to check to see if they equaled one another, but also
whether the guess was greater than or less thant the correct answer, thus
providing the programmer with more detailed feedback.

Q: Why do you think this code requires you to use symbols? What are the
benefits of using symbols?
A: The big difference between symbols and strings is that strings are
mutable while symbols are not.  This makes symbols extremely useful when
using them as identifiers, such as correct or incorrect. This
characteristic makes symbols load faster and, overall, makes the program
run faster.

=end