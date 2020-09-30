# write a method that takes one argument, a positive integer
# and returns a list of the digits in the number

def digit_list(num)
  num.digits.reverse
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)