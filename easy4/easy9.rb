# write a method that takes a positive integer or zero and converts it to a string representation
# without using standard conversion methods available in Ruby such as
# Integer#to_s, String(), Kernel#format etc

DIGITS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(num)
  arr = num.digits.reverse
  arr.map! { |n| n = DIGITS[n] }.join
end

# examples:

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
