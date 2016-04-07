#6.5 Modules

#Declare Module

module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

p Shout.yell_angrily("Ah")
p Shout.yelling_happily("Yay")