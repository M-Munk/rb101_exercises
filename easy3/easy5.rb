# write a method that computes the square of its argument using the multiply method

def multiply(a, b)
  a * b
end

def square(n)
 multiply(n, n)
end

p square(5) == 25
p square(-8) == 64