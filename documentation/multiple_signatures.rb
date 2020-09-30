# what do each of the following puts statements output?

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# fetch(index) → obj
# fetch(index, default) → obj
# fetch(index) { |index| block } → obj

# tries to return the element at the position index, but throws and
# IndexError exception if the referenced index lies outside of the 
# array bounds. This can be prevented by supplying a second argument,
# which will act as a default value.

# Alternatively, if a block is given, it will only be executed when an invalid
# reverence is referenced.

# note that only the index is required in the documentation, the other 2 cases
# are optional arguments (both the second argument and the block argument)

# 1 - => IndexError - 7 is out of bounds 
# 2 - => beats me
# 3 - => 49