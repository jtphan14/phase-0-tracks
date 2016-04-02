#Asks for Users Name

#Gets Users Name

#Define and use method to swap the first and last name

#Convert String into Array

#Confirm if letter is a vowel

#If the letter is a vowel, we need to change to the next vowel. 
def vowel (letter)
	vowels = "aeiou"
	vowel_idx = vowels.index(letter)
	return 'a' if letter == 'u'
	vowels[vowel_idx +1]
end

#If consonant, we need to change to the next consonant.

def consonant (letter)
	consonant = "bcdfghjklmnpqrstvwxyz"
	cons_idx = consonant.index(letter)
	return 'b' if letter == 'z'
	consonant[cons_idx +1]
end


#Print out program

vowel("a")