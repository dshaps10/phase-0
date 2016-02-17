# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  required_padding =  min_size - array.length
  if required_padding == 0
    return array
  else
    array.fill(value, array.size, required_padding)
    return array
  end
end

def pad(array, min_size, value = nil)
  required_padding =  min_size - array.length
  array2 = array.clone
  if required_padding == 0
    return array2
  else
    #array2 = array.clone
    return array2.fill(value, array.size, required_padding)
  end
end

# 3. Refactored Solution



# 4. Reflection