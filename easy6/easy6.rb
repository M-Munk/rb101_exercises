# Write a method that takes two Arrays as arguments and returns an Array
# that contains all the values from the argument Arrays
# There should be no duplication of values in the returned Array, even if 
# there are duplicates in the original Arrays

def merge(arr1, arr2)
  arr1.union(arr2)
end

# Examples:
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# further exploration (without union)

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end
