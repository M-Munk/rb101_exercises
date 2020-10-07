# write a method that takes a string argument and returns a new string that contains
# the value of the original string with all consecutive duplicate characters
# collapsed into a single character.

# you may not use String#squeeze or String#squeeze!

# input - string
# output - new string with doubles removed
# questions: transform the original string or output a new string object?

# data - string

# create an empty new string
# iterate over the characters of string
# add the character to new string unless the character is the same as the one before it
# return the new string

def crunch(string)
  clean_string = ''
  string.each_char do |letter|
    clean_string << letter unless letter == clean_string[-1]
  end
  clean_string
end

# examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
