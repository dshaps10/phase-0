# Pad an Array

# I worked on this challenge [with: Katherine Broner]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
=begin
Input is the 3 arguments used in the method.
 The first input is the array of numbers.
 The second input is the minimum size of the new array.
 The third (optional) input is the object that will be used to fill the space between the original array size and the required minimum size of the new array.

# What is the output? (i.e. What should the code return?)

The code should return a new array that meets the minimum length requirements. This array will contain the original array input plus the additional object that was chosen to pad the array.  The non-destructive method will not change the original array. The destructive method will replace the original array.

# What are the steps needed to solve the problem?

Step 1: Figure out how many indexes need to be added to the new array (if any).  We will do this by subtracting the minimum array length of the original array from the required minimum length of the new array.

Step 2: IF statement: if the required minimum array length is equal to the original array length, return the original array.

Step 3. IF statement: if there is a difference between the minimum allowed and the original array, return new array with the original and add the necessary number of the padding object.

Step 4: IF destructive method: replace old array with new array.  IF non-destructive method: do not replace old array with new array.
=end

# 1. Initial Solution
# What is the input?

def pad!(array, min_size, value = nil)
  if min_size - array.length == 0
    return array
  else
    array.fill(value, array.size, min_size - array.length )
    return array
  end
end

def pad(array, min_size, value = nil)
  array2 = array.clone
  if min_size - array.length == 0
    return array2
  else
    #array2 = array.clone
    array2.fill(value, array.size, min_size - array.length)
    return array2
  end
end

# 3. Refactored Solution

my_array = [1,2,3]

def pad!(array, min_size, value = nil)
  required_padding =  min_size - array.length
  if required_padding == 0
    array
  else
    array.fill(value, array.size, required_padding)
  end
end


def pad(array, min_size, value = nil)
  required_padding =  min_size - array.length
  array2 = array.clone
  if required_padding == 0
    array2
  else
    array2.fill(value, array.size, required_padding)
  end
end

# 4. Reflection
=begin

Q: Were you successful in breaking the problem down into small steps?
A: At first, it was hard to break the larger program down into smaller
methods, but during the refactoring I was able to look at each individual
step and break it down into smaller ones. Once we were able to break it
down my pair and I were able to create a more simplified method.

Q: Once you had written your pseudocode, were you able to easily translate
it into code? What difficulties and successes did you have?
A: I think that writing the psuedocode was helpful in breaking down the
problem into steps and planning out how to solve it.  However, the actual
implementation of the pseudocode into Ruby coe was quite difficult.
Fortunately, the steps listed out in our pseudocode were correct, however
it took a great deal of research the find the correct way to actually
translate it into executable Ruby code.

Q: Was your initial solution successful at passing the tests? If so, why
do you think that is? If not, what were the errors you encountered and
what did you do to resolve them?
A: Oddly enough, our initial solution ran correctly and successfully
completed the challenge.  However, the rspec test kept getting hung up
whenever we ran it.  This was likely due to the method causing an infinite
loop because of an imporperly used "unless statement".  This would have
cause the method to run indefinitely and for rspec test to hang up.

Q: When you refactored did you find any existing methods in Ruby to clean up your code?
A: We ended up using the clone and fill methods.  The fill method allowed
us to take the required index that we needed to add to the array and fill
them with the required object.  It was a much simpler way to do what we
were trying to do originally. The clone method also came in handy when
creatin the non-destructive method. Clone takes a version of the original
array - frozen in time - and clones it.  This allowed us to invoke the
fill method on the clone of the original array, without changing the
underlying, original array.

Q: How readable is your solution? Did you and your pair choose descriptive
variable names?
A: I think our code is eminently readable.  We were fairly verbose in our
variable naming which makes it easy for other programmers to understand.
For instance, we stored the difference between minimum array size and the
array length in a variable called "required_padding".  This way there was
no mistake as to what information was stored in this particular variable.

Q: What is the difference between destructive and non-destructive methods
in your own words?
A: a non-destructive method is a method that, when called on a specific
array, does not change the underlying structure of that array.  In other
words, if you call a non-destructive method on a data structure the
output of that method will show how that method changed the contents of
the data structure.  However, these changes only happen while the method
is running so if the data structure is printed outside the method it will
appear as if nothing has changed.  On the other hand, a destructive method
DOES change the underlying structure of that data structure.  In other
words, if you call a destructive method on a data structure it won't only
display those changes when the method is run, it will also show those
changes if the data structure is printed outside of the method.

=end