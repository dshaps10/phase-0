# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
1. Take a string a input
2. split each string into separate array elements
3. reverse each element of the array
4. join the array back together
5. print the output
=end
# Initial Solution
def reverse_words(string)
    # reversed_string = string.reverse!
    # reversed_array = reversed_string.split(" ")
    # p reversed_array
    # reversed_array.sort! {|x, y| y<=>x}
    # p reversed_array

    split_string = string.split(" ")
    split_string.each do |word|
        word.reverse!
    end
    reversed_string = split_string.join(" ")
    puts reversed_string
end

reverse_words("This is a sentence")

# Refactored Solution





# Reflection
