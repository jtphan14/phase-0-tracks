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
if space == "yes"
		space = true 
	else 
		flowers == "no"
		space = false
end

puts "sample"
sample = gets.chomp


#Add variables into hash, and automatically converts into symbols. 
info = {Name: name, Age: age, Children: children, Decor: decor, Favorite_Color: favorite_color, Likes_Flowers: likes_flowers, Likes_Space: space, Sample: sample }

#Print out hash

p info
