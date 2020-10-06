# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters.  Spaces should not be counted as a 
# character

# examples:

# input:
# Please write word or multiple words: walk

# output:
# There are 4 characters in "walk".

# input:
# Please write word or multiple words: walk, don't run

# output:
# There are 13 characters in "walk, don't run".

# input -> string 1 or more words long
# output -> number of characters in the string excluding spaces
# implicit -> punctuation counts as a character based on example #2

# data -> array of words

# algorithm
# create an empty words array to contain all the words - shortened to split.join.size
# count the characters in each word of the array
# sum the total of the character counts
# return the total

def count_characters(string)
  string.split.join.size
end

puts "Please write word or multiple words: "
text = gets.chomp
puts "There are #{count_characters(text)} characters in \"#{text}\"."