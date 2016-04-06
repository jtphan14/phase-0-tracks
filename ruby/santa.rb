class Santa
	attr_reader :gender, :ethnicity

	def initialize (gender, ethnicity)
		puts "Initalizing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho,ho,ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		puts "Santa's Age: #{@age +=1}"
	end

	def get_mad_at(reindeer_name)
	#find reindeer name in array
	#delete reindeer name
	@reindeer_ranking.delete_if{|reindeer| reindeer == reindeer_name}
	#add reindeer name to end of array	
	@reindeer_ranking.insert(-1, reindeer_name)
	end

end

santas = []
genders = ["male", "female"]
ethnicities = ["asian", "n/a", "white"]
genders.length.times { |i|
  santas << Santa.new(genders[i], ethnicities[i]) }
p santas


grinch = Santa.new("female", "n/a")
grinch.celebrate_birthday
p grinch.get_mad_at("Rudolph")
puts "Grinch is #{grinch.gender} and #{grinch.ethnicity}"