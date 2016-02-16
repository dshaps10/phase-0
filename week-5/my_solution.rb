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

puts separate_comma(99999999)



# 2. Refactored Solution




# 3. Reflection