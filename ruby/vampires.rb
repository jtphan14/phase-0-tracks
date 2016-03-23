puts "How many user's will be processed?"
users = gets.chomp.to_i

until 

puts "What is your name?"
name = gets.chomp

if name == "Drake Cula"|| name == "Tu Fang"
    vampire_name = true
else
    vampire_name = false
end

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

calculated_age = 2016 - year_born
age_correct = age == calculated_age

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order = gets.chomp.downcase

until order == "yes" || order == "no"
    puts "Please answer yes or no. Our company cafeteria serves garlic bread. Should we order some for you?"
    order = gets.chomp.downcase        
end

if order == "yes"
    garlic_bread = true
else 
    garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance?"
enroll = gets.chomp

until enroll == "yes" || enroll == "no"
    puts "Please answer yes or no. Would you like to enroll in the company's health insurance?"
    order = gets.chomp.downcase        
end

if enroll == "yes"
    health_insurance = true
else
    health_insurance = false
end


if (vampire_name==false) && (age_correct == true) && (garlic_bread == true || health_insurance == true) == true
	puts "Probably not a vampire"
elsif (vampire_name==false)  && (age_correct == false) && (garlic_bread == false) && (health_insurance == true) == true
	puts "Probably a vampire"
elsif (vampire_name==false)  && (age_correct == false) && (garlic_bread == true) && (health_insurance == false) == true
    puts "Probably a vampire"
elsif (vampire_name==false)  && (age_correct == false) && (garlic_bread == false) && (health_insurance == false) == true
    puts "Almost certainly a vampire"
elsif  (vampire_name==true) 
    puts "Definitely a vampire"
else
	puts "Results inconclusive"
end

