# Write a method that takes a string argument and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# characters that are not alphabetic should be ignored

def uppercase?(str)
  str == str.upcase
end

# examples:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
