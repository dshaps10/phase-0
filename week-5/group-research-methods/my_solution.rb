# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |item| item =~ /#{thing_to_find}/ } #=> Returns items from source array where item matches thing_to_find
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  match_hash=source.select { |key,value| value == thing_to_find } #=> Returns key/value pairs from source hash where value matches thing_to_find
  match_array =[]
  match_hash.each {|key, value| match_array.push(key)}
  match_array
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.collect! do |item| # Array#collect! overrides original array
    if item.is_a? Integer #searches for integers and modifies them
      item + thing_to_modify
    else
      item #leaves non intgers alone
    end
  end
end

p my_array_modification_method!(i_want_pets, 3)

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify}
  # similar to creating a new key-value store, this block looks at each key and adds the number in "thing_to_modify" to the the key's value
end

p my_hash_modification_method!(my_family_pets_ages, 2)

# Identify and describe the Ruby method(s) you implemented.

=begin

For my_array_modification_method! I used the Array#collect! method. This
method invokes the block once for each element of the object. Because it
contains a "!" it also permanently changes the original array. I also used
the Object#is_a? method.  I used this method so that the number specified
in the "thing_to_modify" argument would only be invoked on integer
elements. Non-integer elements would remain in their original state.

For my_hash_modification_method! I used the Hash#each method.  This method
is destructive and similar to Array#collect! it allowed me to iterate over
each key-value pair in the hash and modify the value permanently by the
number specified in the "thing_to_modify_argument". The block of code
within the bracket is basically saying "for each key in the source array,
change its value by the number specified in the 'thing_to_modify'
argument."

=end

# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
=begin

To effectively complete this challenge, I had to do some research on
Array, Object, and Hash methods. In the process I learned more about the
differences - no matter how subtle - between methods and when to use each
of them. This challenge helped me better understand the differences in
iterating over an array vs. iterating over a hash and the added dimension
that comes with the key-value pair structure of a hash compared with the
ordered list structure of an array.  When it comes to explaining my
research, I learned more about how to break down my solution into each
method used and do explain each method and how it relates back to the
larger issue at hand.  Since methods are the "verbs" of Ruby, they become
the centerpoint when explaining a block of code.

=end