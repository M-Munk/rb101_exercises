# given a string that consists of some words (all lower case) and an assortment of
# non-alphabetic characters, write a method that returns the string with all of the 
# non-alphabetic characters replaced by spaces. 
# if one or more non-alphabetic characters occur in a row, you should only have
# one space in the result (the result should never have consecutive spaces)

def cleanup(str)
  str.gsub(/([^a-z])/, ' ').squeeze(' ')
end

# examples:

p cleanup("---what's my +*& line?") == ' what s my line '

# no regex:

ALPHABET = ('a'..'z').to_a

def cleanup2(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end