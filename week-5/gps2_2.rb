# Your previous Plain Text content is preserved below:
#
# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps:
#   # Put items as key and integer as values of a hash.
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?] Use p to return hash
# # output: [what data type goes here, array or hash?] hash
#
# # Method to add an item to a list
# # input: item name and optional quantity
# # steps: Check if the item already exists in list.
#          IF not exist add an item to list, add the quanity desired
# # output: Updated hash with the right items and quanitty
#
# # Method to remove an item from the list
# # input: Item we want to remove
# # steps: Take the key name as input.
#          Delete associted value from item.
# # output:Update hash without selected item.
#
# # Method to update the quantity of an item
# # input: Key name and number by which to increase or decrease
# # steps: Take the key as input and add/or subtract quanity desired from value
#          IF value equal or less than zero, delete key.
# # output: Updated hash with changed quanity / value
#
# # Method to print a list and make it look pretty
# # input: print list
# # steps: print the hash keys an values in a pretty way
#          IF hash is empty, say list is empty
# # output:a printed lsit or list is empty


grocery_list = "carrots apples cereal pizza carrots"

#Create List Method
def str_split(array)
  grocery_array = array.split(" ")
  grocery_array
end

grocery_array = str_split(grocery_list)


def create_list(array)
  grocery_hash = Hash.new(0)
  array.each do |i|
    grocery_hash[i] += 1
  end
    grocery_hash
end

grocery_hash = create_list(grocery_array)

#Method to add an item to a list

def add_item(grocery_hash, new_item)
    new_item.each do |i|
      grocery_hash[i] += 1
    end
  grocery_hash
end

add_item(grocery_hash, ["pears"])

#Remove item from List.

def delete_item(grocery_hash, remove_item)
  if grocery_hash.has_key?(remove_item)
      grocery_hash.delete(remove_item)
  else
    return "Item is not on list."
  end
end

delete_item(grocery_hash, "pears")


#Update the the quantity
def update_item(grocery_hash, item, item_hash)
  if grocery_hash.has_key?(item)
    grocery_hash.merge!(item_hash)
  else
    "That item is not in your grocery list"
  end
end

update_item(grocery_hash, "blueberries", {"blueberries" => 1})

#Print List and make it look pretty
def print_list (grocery_hash)
  puts "Here is your list:"
  grocery_hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

print_list(grocery_hash

#Reflection

=begin

Q: What did you learn about pseudocode from working on this challenge?
A: I learned about applying more granular detail in my pseudocde so that
I can explicitly describe each step that the method should accomplish.
This makes it much easier to convert the pseudocode into code because
it eliminates the guesswork.

Q: What are the tradeoffs of using Arrays and Hashes for this challenge?
A: Ultimately, we wanted have our items in a Hash because the key-value
pair structure of hashes makes for much easier data manipulation.
However, That meant that since the original list was a string, we had to
write two methods, one to split the string into array elements, and
another to iterate over the array and the push the elements to a hash.
Arrays provide for easier storage and require less intricate code for
iteration, but privde less organization.  Hashes, while slightly more
difficult to iterate over are much better for organization, especially
when using values as a counter system to keep track of quantity.

Q: What does a method return?
A: A method returns the output of the block of code within the body of the
method. This output can be assigned to a variable and used in subsequent
methods.

Q: What kind of things can you pass into methods as arguments?
A: You can pass strings, integers, hashes, arrays, and output from other
methods.

Q: How can you pass information between methods?
A: In order to do so you must save the output from a method in a variable.
This makes the updated collection available to other methods.  So, when
calling the method with the Hash, Array, or other input argument, you
assign that method call to a variable.  This tells ruby that you want to
store the output of that method in a variable, which makes it globally
available instead of only within the method.  You can then pass that
variable to another method as an argument.

Q: What concepts were solidifed in this challenge, and what concepts are
still confusing?
A: At first, the process of passing the output of methods to other methods
was complicated, but once it clicked it became obvious how painfully
simple it really is. This challenged solidifed my knowledge of iterating
over arrays and hashes, updating hash values, converting arrays to hashes,
and passing method outputs to other methods.

=end