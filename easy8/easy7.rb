# write a method that takes a string, and returns a new string in which
# every character is doubled

def repeater(string)
  result = ''
  string.each_char { |letter| result << letter * 2 }
  result
end

# Examples:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
