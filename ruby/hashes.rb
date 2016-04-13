#Ask designer for information regarding the client's name, age, number of children, decor theme, favorite color, likes flowers, likes open spaces.
#Converts answer into variable
puts "Clients Name"
name = gets.chomp.to_s

puts "Clients Age"
age = gets.chomp.to_i

puts "Number of Children"
children = gets.chomp.to_i

puts "Decor Theme"
decor = gets.chomp.to_s

puts "Favorite Color"
favorite_color = gets.chomp.to_s


puts "Likes Flowers"
likes_flowers = gets.chomp
#Create if/else statement to convert string to boolean
if likes_flowers == "yes"
		likes_flowers = true 
	else 
		likes_flowers == "no"
		likes_flowers = false
end



puts "Likes Open Spaces"
space = gets.chomp
#Create if/else statement to convert string to boolean
if space == "yes"
		space = true 
	else 
		space == "no"
		space = false
end


#Add variables into hash and  converts into symbols. 
info = {
	Name: name, 
	Age: age, 
	Children: children, 
	Decor: decor, 
	Favorite_Color: favorite_color, 
	Likes_Flowers: likes_flowers, 
	Likes_Space: space, 

}

#Print out hash
p info

#Ask designer if they want to make any changes
puts "Did you have any changes you wanted to make? Type none if not, type in the name of the category if so."
new_change = gets.chomp.to_sym
#Create if/else statement
#If answer is none. We end the program
if new_change == :none
	p "Thank you for your submission!"
#Get updated value if needed otherwise.
else 
	puts "What would you like to update this information to?"
	new_value = gets.chomp
end
#Update new value to hash
info[new_change] = new_value
#Reprint Hash
p info