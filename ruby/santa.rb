class Santa

	def initialize (gender, ethnicity)
		puts "Initalizing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho,ho,ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

end

grinch = Santa.new("male","vietnamese")
grinch.speak
grinch.eat_milk_and_cookies("chocolate chip cookie")
