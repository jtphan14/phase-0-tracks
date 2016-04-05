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

santas = []
genders = ["male", "female"]
ethnicities = ["asian", "n/a", "white"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
 p santas