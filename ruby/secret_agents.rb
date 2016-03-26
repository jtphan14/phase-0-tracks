# Create a method called encrypt that takes in a string parameter
# Get the length of the string, and set the index
# Go through each letter with a loop in the string and forward it one letter
# Return the lower case string
# Call the method and pass the string

def encrypt(password)
    index = 0
    password.downcase!
    while index < password.length
        if password[index] == "z"
        password[index] = "a"
        index+=1
        elsif password[index] == " "
            password[index] = " "
        index +=1
        else
        password[index] = password[index].next
        index += 1
        end
    end
    p password
end



# Create decrypt method that takes previous encrypted string
# Get lenghts of string and set the index
# Find position of letter in alphabet
# Subtract one from the previous position
# Return lower case string
# Call the method and pass encrypt value

def previous(x)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    previous_letter_index = alphabet.index(x)- 1
    previous_letter = alphabet[previous_letter_index]
end

def decrypt(password)
    password.downcase!
    index = 0
    while index < password.length
        if password[index] == " "
        password[index] = " "
        index+=1
        else password[index] = previous(password[index])
        index += 1
        end
    end
    p password
end

#OUR DRIVER CODE

#Ask agent if they want to use encrypt/decrypt password
puts "Type 1 if you would like to encrypt your password or type 2 if you would like to decrypt your password."
#Retrieve answer
answer = gets.chomp
until answer == "1" || answer == "2"
 puts "Type 1 if you would like to encrypt your password or type 2 if you would like to decrypt your password."
 answer = gets.chomp
end

#Ask agent for password
puts "Please type in your password"
password = gets.chomp
#Create until loop to confirm answer is either 1 or 2

#Create if/else statement to decrypt or encrypt password and print results

    if answer == "1"
        encrypt(password)
    else answer == "2"
        decrypt(password)
    end

