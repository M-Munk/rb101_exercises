def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Arguments may have default values
# The default value does not need to appear first, but 
# arguments with defaults must be grouped together.
# Default argument values can refer to arguments that have already been 
# evaluated as local variables, and argument values are always evaluated
# left to right

# https://ruby-doc.com/core-2.7.0/doc/syntax/calling_methods_rdoc.html

# [4, 5, 3, 6] -> default values are replaces left to right, so b will be 
# replaced with the second value passed in & because there are only 3 values
# passed in, c will use the default value given in the method definition.

# Default Positional Arguments: Ruby will fill in the missing arguments in-order
# left to right.