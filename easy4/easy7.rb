# create a method that converts a string to a number
# without using String#to_i or Integer constructor
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

# examples:

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570