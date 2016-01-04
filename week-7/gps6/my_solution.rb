# Virus Predictor

# I worked on this challenge [with: Chris Wong].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#  require_relative is a link to a file in the same directory
#  require is a link containing a path to a file outside of a directory

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  DENSITY_FACTORS = {
      0 => 0.05,
     50 => 0.1,
    100 => 0.2,
    150 => 0.3,
    200 => 0.4
  }

  def predicted_deaths
    number_of_deaths = 0

    DENSITY_FACTORS.each do |density_limit, factor|
      if @population_density >= density_limit
        number_of_deaths = (@population * factor).floor
      end
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  DENSITY_SPEED = {
      0 => 2.5,
     50 => 2,
    100 => 1.5,
    150 => 1,
    200 => 0.5
  }

  def speed_of_spread
    num_months = 0

    DENSITY_SPEED.each do |density_limit, speed|
      speed if @population_density >= density_limit
    end

    puts " and will spread across the state in #{num_months} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# all_states = VirusPredictor.new(STATE_DATA.each do |state, hash| end, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects


STATE_DATA.each do |state, hash|
VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end


# VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section


# What are the differences between the two different hash syntaxes shown in the state_data file?

#  There are two syntaxes "=>" and ":".  In the first the key which is a string yields to the value and in the ohther they use symbols that yield to the value with ":".

# What does require_relative do? How is it different from require?

#  Require relative links the path to another file so that you can use the information from that file.  Require does not show the path to a specific file.

# What are some ways to iterate through a hash?

# You can iterate through a hash using each (like we did here), map.  Or you can iterate accessing each key, vaule or pair.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# I noticed a lot of repetition so I tried to minimize that by creating a constant that was a hash of specific values that way I could just iterate throught the hash constant which I think makes the code a little more concise and readable.

# What concept did you most solidify in this challenge?

# I think that I solidified iterating through a hash.  I also think I solidified when it is appropriate to use constants in my refactoring.
