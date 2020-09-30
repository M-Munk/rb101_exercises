s = 'abc'
puts s.public_methods.inspect

# prints a list of all the public methods available to the String s
# including those inherited from Object etc.

# how would you modify this code to print just the public methods that are 
# defined or overridden by the String class? Should exclude all members
# that are defined in Object, BasicObject, and Kernel.

# public_methods(all=true) → array
# Returns the list of public methods accessible to obj. If the all parameter 
# is set to false, only those methods in the receiver will be listed.

puts s.public_methods(all=false).inspect

# can just use false:

puts s.public_methods(false).inspect

# you should first look at the documentation for your class before looking
# at the documentation for the superclass.  Even if you know that the superclass
# has a particular method, you should always check that it isn't being overridden 
# by the subclass