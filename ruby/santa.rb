class Santa

	def speak
		puts "Ho,ho,ho! Haaaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
	def initialize
		puts "Initalizing Santa instance..."
	end
end

grinch = Santa.new
grinch.speak
grinch.eat_milk_and_cookies("chocolate chip cookie")
