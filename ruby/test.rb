def previous(x)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    previous_letter_index = alphabet.index(x) - 1
    previous_letter = alphabet[previous_letter_index]
end

previous("c")

def decrypt(password)
    index = 0
    while index < password.length
        password[index] = previous(password[index])
        index += 1
    end
puts password
end

decrypt("bc")