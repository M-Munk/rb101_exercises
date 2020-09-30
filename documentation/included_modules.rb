a = [5, 9, 3, 11]
puts a.min

# change to find the 2 smallest values

# min(n) → array

puts a.min(2)

# this question is supossed to demonstrate Multiple Inheritance, but the 
# language has changed and this is no longer how Ruby functions as #min is a
# valid method of Array. (actually mix-in modules - a way for classes
# of different types to share behaviors without using inheritance)

# a class can use a mix-in module by using the include method.  Once included,
# all the mix-in's methods become available to the objects of the class.
# One of the most commonly used mix-ins in ruby is Enumerable module.
# You can see Enumerable in the Array class documentation under 
# included modules.
