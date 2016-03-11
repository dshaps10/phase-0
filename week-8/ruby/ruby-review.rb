#Pseudocode
=begin
Input: array
Output: array with appropriate values replaced with appropraite replacement words
Steps:
1. Define super_fizbuzz method which takes an array as Input
2. Use map method (destructive) to iterate over each value of the array
3. Check for conditios using eithe if/else or switch statement
    - If value is divisible by 15, replace with "FizzBuzz"
    - If value is divisible by 5, replace with "Buzz"
    - If value is divisible by 3, replace with "Fizz"
    - If not divisible by any above, return original value
4. Print out modified array with replaced values
=end

# Initial  Solution
def super_fizbuzz(array)
    array.map! do |value|
        if value % 15 == 0
            value = "FizzBuzz"
        elsif value % 5 == 0
            value = "Buzz"
        elsif value % 3 == 0
            value = "Fizz"
        else
            value
        end
    end
    p array
end

# Refactored to include switch statement

def super_fizbuzz(array)
    array.map! do |value|
        case
        when value % 15 == 0
            value = "FizzBuzz"
        when value % 5 == 0
            value = "Buzz"
        when value % 3 == 0
            value = "Fizz"
        else
            value
        end
    end
    p array
end

num_array = [1,2,3,4,5,5,15]
super_fizbuzz(num_array)
# Reverse Words

# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin

=end
# Initial Solution

# Refactored Solution





# Reflection

# Reflect
=begin
Q: What concepts did you review or learn in this challenge?
A: I refreshed my knowledge of array iterators using the Array#map! method to loop
through each value of the array. This challenge also allowed me to get more practice
in switch statements and how you can switch them out - pun intended - for regular
if/else statements.  It was cool to refactro my solution using a different approach
to the problem.

Q; What is still confusing to you about Ruby?
A: There are a few enumerable methods that I'd liketo spend more time working with
like the each_with_index method and review the inject method more.  However, the
main thing thats confusing to me about Ruby is why other languages like JavaScript
haven't caught on to Array and Enumerable methods like in Ruby. Step up your game
JavaScript!

Q: What are you going to study to get more prepared for Phase1?
A: I'm going to spend a good chunk of time getting more familiar with Enumerable
methods.  The concept of classes is clicking fairly well and with some minor research
I think I can really shore up my knowledge in that regard.  The thing about Ruby is
that with all that great magic built in through these abstraction layers, it often
becomes hard to keep track of the myriad methods available to the programmer.
Studying Array, Hash and Enumerable methods will help me out greatly in the future.
I think it's also a good idea to understan the code running underneath these methods
and doing a bit of JavaScript as been useful in that regard - especially with for and
while methods.
=end
