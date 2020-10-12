# write a method named include? that takes and Array and a search value as 
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method
# in your solution.

# input: array and value
# output: boolean 
# given an array and a value
# iterate through elements of the array
# if an element in the array == value
# return true
# otherwise return false

# hard way
def include?(array, element)
  index = array.size - 1
  loop do
    return false if index < 0
    return true if array[index] == element
    
    index -= 1
  end
end

# using each
def include?(array, element)
  array.each { |value| return true if value == element}
  false
end

# scans array for the first element that has a specified value
# if one is found, th eindex number is returned, which will always have a 
# truthy value.  nil is returned if no such element is present.
# use !! to force the return value to a boolean true or false.
def include?(array, element)
  !!array.find_index(element)
end

# Examples:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
