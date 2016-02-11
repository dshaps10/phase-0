input_array = [" ", " ", " ", " ", " "]

puts "What is the title?"
title = gets.chomp
input_array[0] = title

puts "Who is the author?"
author = gets.chomp
input_array[1] = author

puts "What is the year of publication?"
date = gets.chomp
input_array[2] = date

puts "What is your short thesis statement (include a period at the end)?"
thesis_statement = gets.chomp
input_array[3] = thesis_statement

puts "What is the sex of the author (male/female)?"
pronoun = gets.chomp
if pronoun == "male"
  input_array[4] = "he"
else
  input_array[4] = "she"
end

def essay_writer(index0, index1, index2, index3, index4)
  index1 + ' was an extremely influential author in the year ' +
  index2 + '. ' + index4 + ' contributed a ton to the field
  of literature. ' + index3 + ' ' + index1 + '\'s work will forever be
  remembered and ' + index4 + ' will forever go down in the annals of
  literary history.'
end

puts essay_writer(input_array[0], input_array[1], input_array[2], input_array[3], input_array[4])
