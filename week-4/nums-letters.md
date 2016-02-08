#What does puts do?

puts returns nil and prints the output to the console with a new line.  This allows you to immediately see the output of your program in the termainal.

#What is an integer? What is a float?

And integer is a whole number while a float is a number represented with decimals.  Integers are the generally preferred format to numeric output in programming.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Floats are more precise than integers because they include decimals, while integers will always round down to give you the nearest whole number.  This is especially useful in division where the output may not be a whole number.  for example, if you were to type **puts 9 / 4** in Ruby while specifying an output of a float, the operation would return 2.25.  On the other hand, if you were to specify an output of an integer, the output would be 2.

##Hours in a year
'''ruby
require 'redcarpet'
markdown = 365 * 24
puts markdown.to_html
'''

##Minutes in a decade
'''ruby
require 'redcarpet'
markdown = (365 * 10) * (24 * 60)
puts markdown.to_html
'''