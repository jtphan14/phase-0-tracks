num = 0

puts "How many users do you want to input"
users = gets.chomp.to_i

def employee_vampire_verification

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

    until (order == "yes" || order == "no")
    	puts "Please answer yes/no.  Would you like to order some garlic bread?"
    	order = gets.chomp.downcase
    end

    if order == "yes"
        garlic_bread = true
    elsif order == "no"
        garlic_bread = false
    else puts "Please answer yes/no. Our company cafeteria serves garlic bread. Should we order some for you?"
        order = gets.chomp.downcase
    end

    puts "Would you like to enroll in the company's health insurance?"
    enroll = gets.chomp.downcase

    until (enroll == "yes" || enroll == "no")
        puts "Please answer yes/no. Would you like to enroll in the company's health insurance?"
        enroll = gets.chomp.downcase
   	 	end
   	if enroll == "yes"
        health_insurance = true
    	elsif enroll == "no"
        health_insurance = false
    	else
	end

    puts "Please list your allergies, one at a time. Type ""done"" when finished"
    allergies = gets.chomp

        if allergies == "sunshine"
            puts "Probably a vampire"
        elsif allergies == "done"
        else
            puts "Please list your allergies, one at a time. Type ""done"" when finished"
            allergies=gets.chomp
        end

    if allergies == "sunshine"
    elsif(vampire_name!=true) && (age_correct == true) && (garlic_bread == true || health_insurance == true) == true
    	puts "Probably not a vampire"
        #Used != to demonstrate knowledge of this code
    elsif (vampire_name==true)  && (age_correct == false) && (garlic_bread == false) && (health_insurance == true) == true
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

end

until num >= users
    employee_vampire_verification
    num +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
