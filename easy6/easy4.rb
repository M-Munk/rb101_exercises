# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method
# You may not use Array#reverse or Array#reverse!

# input: array
# output: mutated array
# examples as given
# data : array 
# algorithm:
# 0 = -1
# 1 = -2
# 2 = -3 etc
# duplicate list
# reassign values in list to the corresponding reverse values in dup list

def reverse!(arr)
  values = arr.dup
  arr.each.with_index do |_, index|
    arr[index] = values[-index - 1]
  end
end


# Examples:
list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
