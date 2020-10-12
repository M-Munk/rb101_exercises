# Write a method that takes an Array and returns a new Array
# with the elements of the original list in reverse order
# do not modify the original list
# You may not use Array#reverse or Array#reverse! nor may you use the 
# method you wrote in the previous exercise

def reverse(arr)
  reverse_arr = []
  index = arr.length - 1
  loop do 
    break if index < 0

    reverse_arr << arr[index]
    index -= 1
  end
  reverse_arr
end

def reverse2(arr)
  reverse_arr = []
  arr.reverse_each {|item| reverse_arr << item }
  reverse_arr
end

def reverse3(arr)
  arr.each_with_object([]) { |item, array| array.unshift(item)}
end

# Examples:

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

p reverse2([1,2,3,4]) == [4,3,2,1]          # => true
p reverse2(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse2(['abc']) == ['abc']              # => true
p reverse2([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse2(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

p reverse3([1,2,3,4]) == [4,3,2,1]          # => true
p reverse3(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse3(['abc']) == ['abc']              # => true
p reverse3([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse3(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

