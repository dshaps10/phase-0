# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?) integer with commas
# What are the steps needed to solve the problem?
=begin
def separate_comma(integer)
  convert integer to string using .to_s and store in "string" variable
  if string.length is less than 4 chars
    puts original number
  else if string.length == 4 chars
    puts string[0] + ',' + string[1...3]
  else if string.length == 5 chars
    puts string[0] + string[1] + ',' + string[2...4]
  else if string.length == 6 chars
    puts string[0] + string[1] + string[2] + ',' + string[3...5]
  else if string.length == 7 chars
    puts string[0] + ',' + string[1...3] + ',' string[4...6]
  else if string.length == 8 chars
    puts string[0] + string[1] + ',' + string[2...4] + ',' + string[5...7]
  else
    puts "That string is not the right size"
=end

# 1. Initial Solution
def separate_comma(int)
  str = int.to_s
  if str.length < 4
    return str
  elsif str.length == 4
    return str[0] + ',' + str[1] + str[2] + str[3]
  elsif str.length == 5
    return str[0] + str[1] + ',' + str[2] + str[3] + str[4]
  elsif str.length == 6
    return str[0] + str[1] + str[2] + ',' + str[3] + str[4] + str[5]
  elsif str.length == 7
    return str[0] + ',' + str[1] + str[2] + str[3] + ',' + str[4] + str[5] + str[6]
  elsif str.length == 8
    return str[0] + str[1] + ',' + str[2] + str[3] + str[4] + '.' + str[5] + str[6] + str[7]
  else
    return "no thanks"
  end
end


# 2. Refactored Solution
def separate_comma(int)
  str = int.to_s
  if str.length < 4
    return str
  elsif str.length == 4
    return str[0] + ',' + str[1..3]
  elsif str.length == 5
    return str[0..1] + ',' + str[2..4]
  elsif str.length == 6
    return str[0..2] + ',' + str[3..5]
  elsif str.length == 7
    return str[0] + ',' + str[1..3] + ',' + str[4..6]
  elsif str.length == 8
    return str[0..1] + ',' + str[2..4] + ',' + str[5..7]
  else
    return "no thanks"
  end
end


# 3. Reflection

=begin
Q: What was your process for breaking the problem down? What different approaches did you consider?
A: Originally, I wanted to use an array method, but this seemed like a
difficult and unnecessary option. Instead, I figured that the best way to
solve this would be to convert the integer to a string and use regex
pattern recognition to place commas in the right places. Since we're not
using regex, I figured I could convert the integer to a string and
manually place the commas where they belonged.

Q: Was your pseudocode effective in helping you build a successful initial
solution?
A: The pseudocode was incredibly effective in helping me understand how I
wanted my program to run. The pseudocode was especially useful for when
knew how I wanted a line of code to run, but didn't know the method I was
supposed to use.  This worked as a good placeholder when I went to
research
the proper method.

Q: What new Ruby method(s) did you use when refactoring your solution?
A: It wasn't so much a method, as a type of shortcut.  Instead of being
verbose and manually returning each individual character in the string, I
took groups of three characters and used a string slice operation to group
them together and insert a comma.

Q: How did you initially interate through the data structure?
A: I took the integer as an input, converted it to a string, and inserted
commas where they belonged.

Q: Do you feel your refactored solution is more readable?
A: I didn't drastically change my code when refactoring it since I think
I was hitting the ceiling of what I could do without the use of regex.
However, I did include string slicing in order to better chunk the
characters into groups of three.  This made it easier to see where the
commas should be placed.
=end
