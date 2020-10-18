# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string.
# The return value should be arranged in order from shortest to 
# longest substring
# assume string has no spaces
# input: string
# output: array of every substring from (index 0, 0) - (index 0, 
# string length).  Array length will equal number of characters in string


def leading_substrings(string)
  substrings = []
  string.each_char.with_index { |_, index| substrings << string[0..index] }
  substrings
end

# Examples:
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
