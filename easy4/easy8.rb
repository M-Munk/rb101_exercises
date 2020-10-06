# convert a string to a signed number without using String#to_i or Integer()
# the string may have a leading + or - sign.  If no sign is give, you should
# return a positive integer.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  arr = str.split('').map { |char| DIGITS[char]}
  sum = 0
  digit_place = 1
  arr.reverse.each do |val|
    sum += val * digit_place
    digit_place *= 10
  end
  sum
end

def string_to_signed_integer(str)
  if str.start_with?('-')
    str.slice!(0)
    return -string_to_integer(str)
  elsif str.start_with?('+')
    str.slice!(0)
    return string_to_integer(str)
  else
    return string_to_integer(str)
  end
end

# examples:

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
