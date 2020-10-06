# Write a method that returns an array that contains every other element of an array
# that is passed in as an argument.
# the values in the return list should be the values that are in teh 1st, 3rd, 5th etc.
# places of the argument array.

# input: array
# output: array composed of even number indices of input array (0, 2, 4, ...)

def oddities(arr)
  arr.select.with_index { |_, index| index.even? }
end


# Examples:
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []