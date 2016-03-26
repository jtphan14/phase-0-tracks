# Create a method called encrypt that takes in a string parameter
# Get the length of the string, and set the index
# Go through each letter with a loop in the string and forward it one letter
# Return the lower case string
# Call the method and pass the string

def encrypt(password)
    index = 0
    while index < password.length
        password[index] = password[index].next
        index += 1
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
    previous_letter_index = alphabet.index(x) - 1
    previous_letter = alphabet[previous_letter_index]
end

def decrypt(password)
    index = 0
    while index < password.length
        password[index] = previous(password[index])
        index += 1
    end
p password
end

encrypt ("abc")
encrypt ("z")
decrypt("bcd")
decrypt("afe")