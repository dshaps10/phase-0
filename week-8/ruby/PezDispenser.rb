# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
1. initialize new dispenser
    - Take array of flavors as argument and number of pez
2. create a method that reports back the number of pez remaining
3. create a method that allows user to take pez from dispenser
    - subtracts number of pez taken
4. create a method that allows the user to add a pez to dispenser
    - adds number of pez given
5. Create a method that displays all of the flavors
=end
# Initial Solution



# your code here!

class PezDispenser

    attr_reader :flavors

    def initialize(flavors)
        @flavors = flavors
        @eaten = []
    end

    #stores the length of the flavors array in the amount variable and displays the current number of available pez
    def get_pez
        puts "You want a pez? Well here's a random one from the dispenser"
        sleep(1)
        puts "Grabbing random pez"
        @flavors.shuffle
        sleep(1)
        puts "You grabbed: "
        puts @flavors.first
        puts " "
        @flavors.shift
        puts "You now have these remaining flavors:"
        puts @flavors
    end

    def pez_count
        count = @flavors.length
        puts "You have #{count} pez left"
    end

    #adds a new pez flavor to the pez dispenser
    def add_pez
        puts "What flavor would you like to add?"
        new_flavor = gets.chomp
        puts " "
        puts "Adding new flavor..."
        puts " "
        sleep(2)
        @flavors << new_flavor
        puts "You successfully added #{new_flavor} to your pez dispenser.  Your flavor selection is now: "
        puts @flavors
        puts " "
    end

end

pez = PezDispenser.new(["cherry", "chocolate", "cola", "grape", "lemon", "orange", "peppermint", "raspberry", "strawberry"])

pez.flavors
pez.get_pez
pez.add_pez
pez.pez_count


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
=begin
flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
=end



# Reflection
