# Write a method that takes an Array of numbers and then returns
# the sum of the sums of each leading subsequence for that array
# you may assume that the array always contains at least one 
# number

# for each member of an array
# sum that members value plus all previous members values
# sum all sums

# create a new array of sums
# iterate through array 
# for each index from 0 -> current index
# sum all members and all value to array of sums
# sum array of sums


def sum_of_sums(arr)
  sums = arr.map.with_index do |_, index|
    arr[0..index].reduce(:+)
  end
  sums.reduce(:+)
end

# examples:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
