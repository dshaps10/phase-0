# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Direct to another Ruby file so that we can reference in our Driver Code
#A relative file is internal to our project
require_relative 'state_data'

class VirusPredictor
#We are initializing & creating instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#A Getter method to make these attributes readable outside of Class

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
   # Everything hereafter is a private method
# Predicting deaths based on population density for each state
#Using Floor method to round down
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Initializing Speed as a counter, and determines the speed of spread based on population size. The higher the population density, the faster the spread.
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

def construct(hash)
  hash.each do |key, value|
    state = VirusPredictor.new(key, hash[key][:population_density], hash[key][:population])
    state.virus_effects
  end
end

construct(STATE_DATA)
#=======================================================================
# Reflection Section
=begin
Q: What are the differences between the two different hash syntaxes shown in the
state_data file?
A; In the main hash, the states are coded as strings, while the keys in the "sub
 hash" are coded as symbols.

 Q: What does require_relative do? How is it different from require?
 A: Require_relative uses a relative path instead of an absolute path, as in
  require.  You are more likely to use require_relative to reference files in the
  same program whereas require is best used to refer to files that are not part of
  the core program.

  Q; What are some ways to iterate through a hash?
  A: The best way to refer through a hash is to use one of Ruby's built in hash
  iterators. This allows you to specify both the keys and values as properties and
  reference them in the body of the method.  You can also refer to specific keys
  and values.

  Q: When refactoring virus_effects, what stood out to you about the variables, if
  anything?
  A: In the original code, the arguments were specified along with the methods
  themselves.   This is superfluous.  When we refactored it we got rid of the
  arguments and only left the  method names.  This ultimately served the same
  purpose and the methods still worked perfectly.

  Q: What concept did you most solidify in this challenge?
  A: This challenge helped solidify accessing nested data structures and
  iterating over them in methods. It also helped me better understand why and
when you would want to use private methods.
=end
