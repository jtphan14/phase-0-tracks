#6.5 Modules

=begin 
Release 0

#Declare Module
module Shout
#Declare Methods using "Self" Keyword
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end
#Driver Code
p Shout.yell_angrily("Ah")
p Shout.yelling_happily("Yay")
=end

#Release 3: Convert a Standalone Module to a Mixin

#Declare Module
module Shout
#Method
	def cheer(team_name)
		puts "Go #{team_name}!!!"
	end
end

#Define Class
class Cheerleader
	#include module
	include Shout
end
#Define Class
class Fans
	#include module
	include Shout
end

cheerleader = Cheerleader.new
cheerleader.cheer("Chargers")

fans = Fans.new
fans.cheer("Warriors")
