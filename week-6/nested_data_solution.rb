# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |array|
  if !array.is_a? Array
    p array + 5
  else
    array.each do |sub_array|
      if !sub_array.is_a? Array
        p sub_array + 5
      end
    end
  end
end


#Refactored

number_array.flatten!(2).each do |element|
  p element + 5
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]



#Refactored

startup_names.flatten!(2).each do |word|
  p word << "ly"
end

#Reflection
=begin

Q: What are some general rules you can apply to nested arrays?
A: In order to select a certain element within the array you successively
list each outer array and the element of that array that you want to
target.  It's as simple as listing one array and its index one after the
other.  Another good rule to keep in mind is that in order to iterate over
multidimensional arrays you generally need to nest array methods within
array methods.  By nesting these methods within one another as well as
utilizing control flow, you can ensure that you iterate over elements
of all of the subarrays.

Q: What are some ways you can iterate over nested arrays?
A: Iterating over nested arrays is similar to iterating over outer arrays.
However, you use a combination of control flow and nested iteration methods
to access elements of subarrays.  Essentially, you iterate over the
outermost array as you normally would, in the body of the block, you
then write an if/then statement to check if the sub arrays are themselves
arrays or just individual elements.  You basically keep checking to see
if the elements of each sub arrays are, themselves, arrays and continue to
nest these methods until you've gone as deep as the innermost array.

Q: Did you find any good new methods to implement or did you re-use
one you were already familiar with? What was it and why did you decide
it was a good option?
A: We made use of the flatten method.  As the previous answer suggested,
iterating over sub-arrays and sub-arrays within sub-arrays can be a
rabbit hole of control flow.  Instead, you can simply flatten the array
and create one array with all nested elements at the same level.  This
means you only need iterate over the array once in order to apply the
block of code.

=end