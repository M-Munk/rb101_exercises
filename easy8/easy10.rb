# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument.  If the argument has an
# odd length, you should return exactly one character.  If the argument has
# an even length, you should return exactly two characters.

# determine length of string
# if string length is odd, return the single char at index length/2 
# if string length is even, return the chars at  length/2-1 and length /2

def center_of(string)
  if string.size.odd? 
    string[string.size/2]
  else
    string[(string.size/2 - 1)..string.size/2]
  end
end

# Examples:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
