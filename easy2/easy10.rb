array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => %w(Moe Larry CURLY SHEMP Harp CHICO Groucho Zeppo)
# even though array1 and array 2 are different objects, the string 
# objects inside the 2 arrays are the same objects so when they were 
# modified with upcase!, they are modified in both arrays.