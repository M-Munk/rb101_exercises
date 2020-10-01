# Write a method that takes one argument, a string containing
# one or more words, and returns the given string with words
# that contain five or more characters reversed.
# Each string will consist of only letters and spaces
# spaces whould be included only when more than one word 
# is present

def reverse_words(words)
  arr = words.split
  arr.each_with_index do |word, index|
    if word.size >= 5
      arr[index] = word.reverse
    end
  end 
  arr.join(' ')    
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')