# write a method that returns true if the string passed as an argument is a palindrome
# and false otherwise.  A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(str)
  str == str.reverse
end

# Examples:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true