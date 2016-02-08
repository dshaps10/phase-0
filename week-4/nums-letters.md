#What does puts do?

puts returns nil and prints the output to the console with a new line.  This allows you to immediately see the output of your program in the termainal.

#What is an integer? What is a float?

And integer is a whole number while a float is a number represented with decimals.  Integers are the generally preferred format to numeric output in programming.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Floats are more precise than integers because they include decimals, while integers will always round down to give you the nearest whole number.  This is especially useful in division where the output may not be a whole number.  for example, if you were to type **puts 9 / 4** in Ruby while specifying an output of a float, the operation would return 2.25.  On the other hand, if you were to specify an output of an integer, the output would be 2.

##Hours in a year

```ruby
puts 365 * 24
```

##Minutes in a decade

```ruby
puts (365 * 10) * (24 * 60)
```

#Reflection Questions

##How does Ruby handle addition, subtraction, multiplaction, and division of numbers?

Addition: num1 + num2
Subtraction: num1 - num2
Multiplication: num1 * num2
Division: num1 / num2

If a number is an integer, the operation will always return a whole number. If it is a float, it will return a number with a decimal.

##What is the difference between integers and floats?

Integers are whole numbers while floats are numbers including decimal points.

##What is the difference between integer and float division?

With integer division the result will always be a whole number.  If the operation would normally return a decimal, but an integer output is specified, then the answer will be rounded down to the closest whole number.  If a float output is specified, then the answer will be not be rounded and the decimal values will be included.

##What are strings? Why and when would you use them?

Strings are a sequence of characters, as opposed to numbers.  String are commonly used when the programmer wants to include a block of text within their code, whether that be one word, a sentence, a paragraph, etc.  A string is a different data type than an integer, and, thus, they cannot be combined in mathematical equations.

##What are local variables? Why and when would you use them?

Local variables are variables that are defined within the scope of a function or block.  These are in direct contrast to and can override global variables, which can be accessed anywhere within the program. You would use a local variable if it was only applicable to a specific function and you did not want that variable accidentally called elsewhere in the program.  Local variables are also useful for overriding global variables in situations that call for it.

##How was this challenge? Did you get a good review of some of the basics?

This challenge was a nice refresher to some of the earlier material I learned in Codecademy's Ruby course.  More importantly, this exercise gave me an idea - albeit on a smaller and more controlled scale - of how we would use RSpec to incrementally test our code for any issues.  Also important, this exercise gave a good overview of the general workflow when coding.

###4.2.1 Defining Variables

<a href="https://github.com/dshaps10/phase-0/blob/master/week-4/defining-variables.rb">Defining Variables</a>

###4.2.2 Simple String Methods

<a href="https://github.com/dshaps10/phase-0/blob/master/week-4/simple-string.rb">Simple String Methods</a>

###4.2.3 Local Variables and Basic Arithmetic

<a href="https://github.com/dshaps10/phase-0/blob/master/week-4/basic-math.rb">Local Variables and Basic Arithmetic</a>