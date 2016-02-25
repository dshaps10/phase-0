# Your Names
# 1) Nick Russo
# 2) Dan Shapiro

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  suggested_items = {
    "cookie" => "chocolate chips",
    "cake" => "frosting",
    "pie" => "pie crust"
  }

  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.key?(item_to_make)

  serving_size = library[item_to_make]

  if num_of_ingredients % serving_size == 0
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make} Suggested baking items: #{suggested_items[item_to_make]}"
  else
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{num_of_ingredients % serving_size} leftover ingredients. Suggested baking items: #{suggested_items[item_to_make]}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#Reflect
=begin

Q: What did you learn about making code readable by working on this challenge?
A: I learned how you can use different variations on typical control flow
to make the code more concise and more readable.  For instance, if there
is a simple if else statement that is merely checking for a true/false
value, you can, instead, write a ternary expression that condenses the
code the one line and makes the syntax more concise.  Similarly, if there
is only one condition being measured you can put the if statement on one
line by writing something along the lines of: execute code *if* condition
is true.

Q: Did you learn any new methods? What did you learn about them?
A: I got more practice using the Hash#key?/Hash#has_key? method.  This
allows you to check to see if the hash contains the key you are looking
for and execute the code accordingly.  This was helpful in this particular
challenge as we wanted to check to see if the library of food contained
the item that the person wanted to make before executing the code.

Q: What did you learn about accessing data in hashes?
A: Accessing data in hashes is much like doing so in an Array.  The main
difference, however, is that when accessing data in a hash you must specify both
the key and the value as parameters instead of simply the values like in
array iterators.  To access specific values in a hash you can simple type the
name of the has followed by the key name in brackets.

Q: What concepts were solidified when working through this challenge?
A: Hash iterators bcame much easier after completing this challenge.  I got more
accustomed to including the added parameters for the key-value pairs and
executing the code.  Raising exceptions and adding specific error messages also
became clearer and I have started to realize why programmers create their own
exceptions when writing programs - to ensure the code executes according to
their specifications.
=end
