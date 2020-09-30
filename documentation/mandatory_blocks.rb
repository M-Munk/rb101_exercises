# assume you have the following code, how would you search this Array
# to find the first element whose value exceeds 8?

a = [1, 4, 8, 11, 15, 19]
value = a.bsearch { |x| x > 8 }
puts value

# Documentation: 
# bsearch {|x| block } → elem
# Signature shows #bsearch takes 1 argument - a block
# returns an element of the Array to which the block is applied
# the block is required. It is used here in "find-minimum mode"

# array must be sorted first to apply the binary search algorithm