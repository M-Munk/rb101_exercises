# The Fibonacci series is a series of number such that the first 2 numbers
# are 1 by definition, and each subsequent number is the sum of the two 
# previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the
# results grow at an incrediby rapid rate.  For example, the 100th 
# Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, 
# especially considering that it takes 6 iterations before it generates
# the first 2 digit number.

# Write a method that calculates and returns the index of the first 
# Fibonacci number that has the number of digits specified as an argument.
# the first Fibonacci number has index 1


# You may assume that the argument is always greater than or 
# equal to 2

# index in example results appears to be actually index + 1 (not zero based)
# number of digits: 10**(num - 1) will give the minimum answer
# data structure: array
# create fib_array until the first number = or > minimum answer
# return index of answer

# create fib_sequence
# start with [0,1]
# add number = the sum of previous 2 numbers
# continue adding numbers 
# until number added >= min_value

def find_fibonacci_index_by_length(places)
  min_answer = 10**(places - 1)
  fib_array = create_fib(min_answer)
  fib_array.length
end

def create_fib(min_value)
  fib_sequence = [1, 1]
  index = 1
  loop do
    number = fib_sequence[index - 1] + fib_sequence[index]
    fib_sequence << number
    index += 1
    break if number >= min_value
  end
  fib_sequence
end

# Examples:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
