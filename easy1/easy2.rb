# Write a method that takes an integer positive, negative, or zero
# returns true if number's absolute value is odd
# assume the argument is a valid integer value

def is_odd?(num)
  num % 2 != 0
end

puts is_odd?(1)
puts is_odd?(0)
puts is_odd?(-347)
puts is_odd?(2)
puts is_odd?(-200)