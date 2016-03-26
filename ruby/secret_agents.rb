# testing
​
#  create a method called encrypt that takes in a string parameter
#  get the length of the string, and set the index
#  go through each letter with a loop in the string and forward it by one letter;
#  return the lowercase string
#  call the method and pass the string
​
​
def encrypt(password)
    index = 0
    while index < password.length
        password[index] = password[index].next
        index += 1
    end
    p password
end
​
# encrypt("abc")
​
​
​
#  create decrypt method that takes previous encrypted string
#  get length of string and set the index
#  find position of letter in alphabet
#  subtract one from the previous position
#  return lower case string
#  call the method and pass encrypt value
​
def previous
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    puts alphabet[0]
end
​
def decrypt(password)
    index = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
​
    while index < password.length
        password[index] = password[index]
        index += 1
    end
    p password
​
end
​
​
encrypt(decrypt("bcd"))
​
# puts "\n"
​
decrypt(encrypt("bcd"))
​
# puts "\n"
​
# previous(encrypt("bcd"))
​
​