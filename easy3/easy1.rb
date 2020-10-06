# write a program that solicits 6 numbers from the user
# then prints a message that describes whether or not the 6th number 
# appears amongst the first 5

# examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# input - 6 strings
# output 1 array of 5 integers and 1 integer

# create array to hold integers
# get 5 strings from the user
# check that each string can be converted to an integer
# add integer to array
# get 6th string from user & check if integer
# check if array includes 6th integer
# return if the number appears in the array

ORDINAL = %w[1st 2nd 3rd 4th 5th].freeze

def int?(num)
  num.to_i.to_s == num
end

def enter_numbers
  loop do
    answer = gets.chomp
    return answer.to_i if int?(answer)

    puts '==> Invalid number, please re-enter:'
  end
end

def input_numbers
  numbers = []
  5.times do |num|
    puts "==> Enter the #{ORDINAL[num]} number:"
    answer = enter_numbers
    numbers << answer
  end
  numbers
end

def input_compare
  puts '==> Enter the last number:'
  enter_numbers
end

def print_outcome(arr, int)
  if arr.include?(int)
    puts "The number #{int} appears in #{arr}."
  else
    puts "The number #{int} does not appear in #{arr}"
  end
end

numbers = input_numbers
last_num = input_compare
print_outcome(numbers, last_num)
