def caesar_cipher(string, shift_factor)
  alphabet = ('a'..'z').to_a#creates an array of the alphabet
  string_arr = string.split("");#splits the string into an array

  string_arr.each_with_index do |letter, index|#iterates through the array
    if alphabet.include?(letter.downcase) #checks if the letter is in the alphabet
      alphabet_index = alphabet.find_index(letter.downcase) #finds the index of the letter in the alphabet
      alphabet_index += shift_factor #adds the shift factor to the index
      alphabet_index -= 26 if alphabet_index > 25 #subtracts 26 if the index is greater than 25
      string_arr[index] = letter == letter.upcase ? alphabet[alphabet_index].upcase : alphabet[alphabet_index]#replaces the letter with the shifted letter
    end
  end
  string_arr.join("")
end

p caesar_cipher('What a string!', 5)
