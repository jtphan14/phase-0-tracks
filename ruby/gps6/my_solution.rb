
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
require_relative  'state_data'

# require_relative: is from the same directory as the current file you are working on.
#require: pulls information that not location in the same directory and you need to write the full file path. 
    #require_relative: pulls the information from the state_data file (hash)
    #require_relative is a convenient subset of require:
    #require_relative('path')
    #equals: require(File.expand_path('path', File.dirname(__FILE__)))



class VirusPredictor
  
  # initialize set up the program with instance varibles thhat can be access through out the class.
  # Its pulling the varibles from the arugements.
  #set up parameters for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #virus effects is running two methods predicted_deaths, speed_of_spread. The varibles that get passed throught predicted_deaths, and speed_of_spread are set in the initialize method.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #
  private

    def predicted_deaths
      factor = case @population_density
        when 0...50 then 0.05
        when 50...100 then 0.1
        when 100...150 then 0.2
        when 150...200 then 0.3
        else 0.4
      end
      number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    end
  
  # sets the speed of the virus spread by an if/else statement. if the density is high, the speed is slow, but if the density is low, the speed is higher. Prints results
  
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

    # def speed_of_spread
    #   speed = case @population_density
    #     #speed = 0.0
    #     when 0...50 then  2
    #     when 50...100 then  1.5
    #     when 100...150 then  1.0
    #     else speed =  0.5
    #   end
    #   puts " and will spread across the state in #{speed} months.\n\n"
    # end

    def speed_of_spread
        speed = case @population_density
          when 0...50 then 2.5
          when 50...100 then  2.0
          when 100...150 then  1.5
          when 150...200 then 1.0
          else speed = 0.5
        end
        puts " and will spread across the state in #{speed} months.\n\n"
      end
   
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
 # alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state,info|
   state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
   state.virus_effects
end




#=======================================================================
# Reflection Section

# On your own, add a commented reflection section to yourmy_solution.rb file. Answer the following questions in your reflection:

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The arrow hash is used when you have one identifier, the colons are used to identify symbols 
# What does require_relative do? How is it different from require?
# Require relative allows you to access file within your directory. It is different then require where you need the full name.
# What are some ways to iterate through a hash?
#You can do .each or .map
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I think that if you use a lot of different variables, it helps to refactor.
# What concept did you most solidify in this challenge?