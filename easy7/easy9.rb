# Wtite a method that takes two Array arguments in which each
# Array contains a list of numbers, and returns a new Array that
# contains the product of every pair of numbers that can be 
# formed between the elements of the two arrays. The results 
# should be sorted by increasing value.

# Assumptions: from the example, duplicate values are included
# in the returned array

# iterate through all members of first array and multiply them 
# by each member of second array
# sort the final array


def multiply_all_pairs(arr1, arr2)
  result = arr1.map do |first_num|
    arr2.map do |second_num|
      first_num * second_num
    end
  end
  result.flatten.sort
end

# Example:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# this can also be solved with Array#product
