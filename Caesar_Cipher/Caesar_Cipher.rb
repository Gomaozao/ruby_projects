# Caesar Cipher
# space is 32, a is 97 and z is 122, 119 is w
def caesar_cipher(string, shift_factor)
    new_string = ""
    
    string.split("").each do |char|
        char = char.downcase
        char = char.ord # assign ascii_value
        if(char >= 97 && char <= 122) # 97 to 122 is the alphabet
            char += shift_factor # increment shift_factor for each ascii_value
        end

        if(char > 122) # checked after incrementing above
            char -= 26 # 26 is the number to invert the alphabet
        end

        char = char.chr  # turn ascii_value to character
        new_string += char # append each character to new_string
    end
    puts new_string
end

caesar_cipher("uvWxyzhat a string!", 5)