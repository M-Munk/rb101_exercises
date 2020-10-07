# given a string of words separated by spaces, write a method that takes this string of 
# words and returns a string in which the first and last letters of every word are
# swapped

# you may assume that every word contains at least one letter, and that the string 
# will always contain at least one word.  You may also assume that each string 
# contains nothing but words and spaces

# input: string
# output: modified string with first and last letter of each word swapped
# from tests: case should not be changed

# data type: iterate over words in a string and perform transformation using an array 

# algorithm:
# set array = the string split into individual words
# iterate over each word in the string
# replace first letter with last letter variable value
# replace last letter with first letter variable value
# re-join the array into a string split with spaces.
# return the string


def swap(str)
  word_list = str.split
  word_list.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  word_list.join(' ')
end

# examples:

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
