# Write a method that will take a short line of text and print it in within a box

# you may assume that the input will always fit in your terminal window

# input string
# output string with box
# box is always 2 characters longer than string length
# string is always printed on the third line of the box

def create_line(num)
  '-' * num
end

def create_space(num)
  ' ' * num
end

def print_in_box(string)
  length = string.size + 2
  puts("+#{create_line(length)}+")
  puts("|#{create_space(length)}|")
  puts("| #{string} |")
  puts("|#{create_space(length)}|")
  puts("+#{create_line(length)}+")
end

# example:

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+