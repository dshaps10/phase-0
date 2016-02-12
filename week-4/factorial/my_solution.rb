# Factorial

# I worked on this challenge with Dan Shapiro.


# Your Solution Below
def factorial(n)
    if n == 0
      p 1
    elsif n < 0
      puts 'Cannot factorial a negative number.'
    else
      p n * factorial(n-1)
    end

end

factorial(-9)
