class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :age

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
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "Vietnamese", "Hawaiian", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age_array = []
0.upto(140) {|i| age_array << i}

i=0
until i == 130
	new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	new_santa.age = age_array.sample
	p new_santa
	i+=1
end
=begin
grinch = Santa.new("female", "n/a")
grinch.celebrate_birthday
p grinch.get_mad_at("Rudolph")
puts "Grinch is #{grinch.gender} and #{grinch.ethnicity}"
=end