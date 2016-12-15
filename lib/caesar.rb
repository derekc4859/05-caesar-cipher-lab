$array_lowercase = [*?a..?z] #This array has all of the lowercase letters
$array_upcase = [*?A..?Z] #This array has all of the uppercase letters


def caesar_encode(string,offset)
    string.split("").map do |character| #Method takes in user's string and then splits it into an array
      if $array_lowercase.include?(character) #If the string has any lowercase letters
        new_character = $array_lowercase[($array_lowercase.index(character)+ offset)%26] #Then take the lowercase letter's number, add the user's offset and mod 26 to check for any remainders
       elsif $array_upcase.include?(character) #Otherwise if the string has any uppercase letters
       new_character = $array_upcase[($array_upcase.index(character)+ offset)%26] #Then take the uppercase letter's number, add the user's offset and mod 26 to check for any remainders
           else character #Otherwise, just keep the character the same
      end
    end.join("") #Combine all of the characters together
end

def caesar_decode(string,offset)
  string.split("").map do |character| #Method takes in user's string and then splits it into an array
     if $array_lowercase.include?(character) #If the string has any lowercase letters
        new_character = $array_lowercase[($array_lowercase.index(character)-offset)%26] #Then take the lowercase letter's number, subtract the user's offset and mod 26 to check for any remainders
        elsif $array_upcase.include?(character) #Otherwise if the string has any uppercase letters
       new_character = $array_upcase[($array_upcase.index(character)-offset)%26] #Then take the uppercase letter's number, subtract the user's offset and mod 26 to check for any remainders
           else character #Otherwise, just keep the character the same
     end
   end.join("") #Combine all of the characters together
end
