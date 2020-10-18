# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the 
# substring begins. This means that all substrings that start at
# position 0 should come first, then all substrings that start
# at position 1, and so on. Since multiple substrings will occur at each 
# position, the substrings at a given position should be returned in order
# from shortest to longest.
# you may use the leading_substrings method you wrote in the previous 
# exercise

# assume initial string contains no spaces.
# input - string
# array of all substrings starting from [0-length] to [length-length]

def leading_substrings(string)
  substring = []
  string.each_char.with_index { |_, index| substring << string[0..index] }
  substring
end

def substrings(string)
  result = []
  string.each_char.with_index do |_, index|
    result.concat(leading_substrings(string[index..string.size]))
  end
  result
end

# Example:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
