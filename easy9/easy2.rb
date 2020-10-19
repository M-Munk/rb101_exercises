# a double number is a number with an even number of digits whose left side digits
# are exactly the same as its right-side digits.
# for example: 44, 3333, 103103, 7676 are all double numbers
# 444, 334433, and 107 are not.

# write a method that returns 2 times the number provided as an argument
# unless the argument is a double number.  Double numbers should be returned
# as is

# input: number - assume positive integer based on examples given
# output: either 2 times the number given or the number if the number is
# a double number

# algorithm
# determine if number is double number?
# if the number is a double number, return the number
# otherwise return number * 2.

# to determine if the number is a double number
# convert the number into a string
# split the string in half
# if the first half equals the second half
# the number is a double number
# return true
# if not, return false

def is_double?(num)
  str = num.to_s
  str[0...(str.size/2)] == str[(str.size/2)..-1]
end

def twice(num)
  return num if is_double?(num)
  num * 2
end

# examples:

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
