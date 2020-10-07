# Write a method that determines and returns the ASCII string value of a string that is 
# passed in as an argument.  The ASCII string value is the sum of the values of every 
# character in the string. You may use String#ord to determine the ASCII value of a character

# inputs: string
# outputs: number representing the sum of the askii value of characters
# questions? do spaces count?
# String#ord returns the Integer ordinal of a one character string

# data - array of string characters

# algorithm
# convert input string to an array of characters.
# iterate over the string character array and produce an array of 
# ascii values of the characters
# sum the ascii values of the characters
# return the sum


def ascii_value(str)
  str.split('').map { |char| char.ord }.sum
end

# examples:

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
