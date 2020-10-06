# write a method that takes two strings as arguments, 
# determines the longest of the two strings
# and then returns the result of concatenating the shorter string, the longer string, 
# and the shorter string once again.
# you may assume that the strings are of different lengths

# input - 2 strings of different length
# output - 1 string consisting of short+long+short string inputs


def short_long_short(str1, str2)
  if str1.length > str2.length
    new_str = str2 + str1 + str2
  else 
    new_str = str1 + str2 + str1
  end
  new_str
end


# examples:

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"