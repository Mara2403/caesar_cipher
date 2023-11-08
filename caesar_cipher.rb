def caesar_cipher(string, key)
  #user string to ascii array
  array_ascii = string.bytes

  # encrypt (shift) into numeric ascii array using the key
  numeric_encrypted_array = array_ascii.map do |item| 
    shift = item + key
    if (97..122).include?(item)
      if (shift > 122)
        shift - 26
      else shift
      end
    elsif (65..90).include?(item)
      if (shift > 90)
        shift - 26
      else shift
      end
    else item
    end
  end

  # converting ascii ascii back to a string
  encrypted_array = numeric_encrypted_array.map do |number| 
    number.chr
    end
    puts encrypted_string = encrypted_array.join
    return encrypted_string
end

puts "What is the text you would like to encrypt using Caesar Cipher encryption? Please enter the text below:"  
user_string = gets.chomp
puts "Please enter the number you'd like to use for encrypting your text:"
user_key = gets.chomp.to_i

caesar_cipher(user_string, user_key)