# write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes

# words consist of any string of characters that do not include a space

# input: string
# output: hash where keys are the word lengths and values are the number
#         of times that word length occurs

# data: hash

# algorithm:
# create empty hash with default value 0
# convert string into an array of words
# iterate over words
# word.size becomes the key, 
# set value = value + 1
# return hash

def word_sizes(text)
  word_size = Hash.new(0)
  words = text.split
  words.each { |word| word_size[word.size] += 1 }
  word_size
end

# examples:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
