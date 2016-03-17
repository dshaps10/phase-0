# Numbers to English Words


# I worked on this challenge [with: Emmett Garber].
# This challenge took me [#] hours.


# Pseudocode
# Set up hahsesthat have the spelled out names
# If value is 100 print the words
# if value is betwwen 1 and 19 call from first hash
# If greater than 19 split number into individual integers in an array then call on each repective integer in appropriate hash




# Initial Solution
firsthash = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
tenhash = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }





def numberWords(number, firsthash, tenhash)
  if number == 100
    puts "one hundred"
  elsif firsthash.has_key?(number)
    puts firsthash[number]
  else
    x = number.to_s.split('').map { |digit| digit.to_i }
    puts "#{tenhash[x[0]]} #{firsthash[x[1]]}"
  end
end

numberWords(22, firsthash, tenhash)

# Refactored Solution
class NumtoWord
  def initialize(number)
    unless number.is_a? Integer
      raise ArgumentError.new("Value has to be an integer.")
    end
      @number = number
      @firsthash = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6   => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
      @tenhash = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }
  end

  def numberWords
    if @number == 100
      puts "one hundred"
    elsif @firsthash.has_key?(@number)
      puts @firsthash[@number]
    else
      x = @number.to_s.split('').map { |digit| digit.to_i }
      puts "#{@tenhash[x[0]]} #{@firsthash[x[1]]}"
    end
  end
end

num = NumtoWord.new(37)
num.numberWords


# Reflection
