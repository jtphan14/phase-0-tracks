puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster from 1 to 10?"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp.downcase

until adoption == "yes" || adoption == "no"
    puts "Is the hamster a good candidate for adoption?"
    adoption = gets.chomp.downcase        
end
 
if adoption == "yes"
    ham_adopt = true
elsif adoption == "no"
    ham_adopt = false
end

puts "What is the hamster's age in months?"
age = gets.chomp.to_f

puts "The hamsters name is #{name}.  It is #{age} months old.  Here is some other information you may want to know about it:
            Fur Color: #{fur}
            Noisiness: #{volume}
            I will be a nice pet: #{ham_adopt}"