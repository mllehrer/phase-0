# Virus Predictor

# I worked on this challenge [by myself, guide Caitlyn Yu].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

#This file needs a state_data file and state_data needs to be in the same directory. If you changed it to require you would need a full path. It's required relative to the file we're in. Require and require_relative check to see if you've loaded that file. "Load" continues to reload each time the data is called for.

class VirusPredictor
  #set up our instance variables for the class for this particular instance of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Uses data initialized to run two private methods (below)

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

#using the population density and population for this instance to calculate predicted deaths based on this algorithm
  def predicted_deaths
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
#This one is only using population density and another algorithm to calculate the speed with which the virus will spread in this instance.
  def speed_of_spread #in months
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


STATE_DATA.each do |state, info|
  current_state = VirusPredictor.new(state, info[:population_density], info[:population])
  current_state.virus_effects
end


#=======================================================================
# Reflection Section