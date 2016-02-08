#Full Name Greeting

puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts 'Hello there ' + first_name + ' ' + middle_name + ' ' + last_name

#Favorite Numbers

puts 'What is your favorite number?'

favorite_number = gets.to_i
better_number = favorite_number + 1


puts 'Here\'s an even better number: ' + better_number.to_s