# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (aeiou), digits, punctuation,
# and whitespace should not be doubled

VOWEL = %w[a e i o u A E I O U]

def double_consonants(string)
  result = ''
  string.each_char do |letter|
    if (/[A-Za-z]/ =~ letter) && !VOWEL.include?(letter)
      result << letter * 2
    else result << letter
    end
  end
  result    
end

# Examples
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
