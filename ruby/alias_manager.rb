#Methods Used to Create new Alisas

#Method used to move to the next vowel.
def vowel (letter)
	vowels = "aeiou"
	vowel_idx = vowels.index(letter)
	return 'a' if letter == 'u'
	vowels[vowel_idx +1]
end

#Method used to move to the next consonant
def consonant (letter)
	consonant = "bcdfghjklmnpqrstvwxyz"
	cons_idx = consonant.index(letter)
	return 'b' if letter == 'z'
	consonant[cons_idx +1]
end

#Method to confirm if letter is a vowel or consonant and to determine which method to use
def encryption(letter)
new_word=""
	if 
		letter == 'a'||letter =='e'||letter =='i'||letter =='o'||letter =='u'
		new_word += vowel(letter)
	else
		new_word += consonant(letter)
	end
	new_word
end
#Method to Create new Alias
def new_alias
#Get User Input
puts "What is your full name?"
$full_name = gets.chomp.downcase
#Split Full name into Two Items in Array. Reverse Order. Renamed Array
split_name = $full_name.split(' ')
name_array = split_name.reverse!

#Identify New First Name and split first name into letters.
new_first_array = name_array[0].split('')
#For each letter in the array, use encryption method
new_first_name = new_first_array.map!{|letter|encryption(letter)}
#Merge new array into string and capitalize
new_first = new_first_name.join.capitalize!

#Identify New Second name
new_second_array = name_array[1].split('')
#Split Second Name into Letters and Use Encryption method
new_second_name = new_second_array.map{|letter|encryption(letter)}
#Merge new array into string and capitalize
new_second = new_second_name.join.capitalize!

#Print New First name
p $alias_name = new_first +" " + new_second
end
#User Interface
#Welcomes user. Advises prompt
puts "Hello! Welcome to your alias database manager. Press ent to continue"
#Gets Input
input = gets.chomp
#Create an empty hash to store data input
alias_hash ={}
#Until user types in quit, keep asking seller to input names.
until input == "quit"	
	new_alias
	puts "Press ent to continue. Type 'quit' to end"
	input = gets.chomp
#Store Alias info into Data Structure	
	alias_hash[$full_name] = $alias_name
end
#Print out Data
p alias_hash.each{|name, aka| puts "#{name} aka #{aka}"}
