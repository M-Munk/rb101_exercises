# convert a signed number to a string
# add the ability to represent negative numbers as strings
# write a method that takes an integer, and converts it to a string representation
# without using any of the standard conversion methods available in Ruby

DIGITS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(num)
  arr = num.digits.reverse
  arr.map! { |n| n = DIGITS[n] }.join
end

def signed_integer_to_string(num)
  if num < 0
    integer_to_string(-num).prepend('-')
  elsif num > 0
    signed_integer_to_string(num).prepend('+')
  else
    integer_to_string(num)
  end
end

# examples:

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
