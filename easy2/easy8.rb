# Write a program that asks the user to enter an integer greater than 0
# then asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer

# input - string of an integer greater than 0
# 2nd input - string: a choice between sum and product
# output - integer representing sum or product of integers between 1 and the integer(string) 
# entered by the user

# ask user for an integer greater than 0
# verify input is an integer greater than 0, if not ask again
# ask user if sum or product?
# if sum:
# set initial total = 0
# for each number from 0 to the number entered
# sum the total + the number
# return the sum to the user
# if product:
# set initial total = 1
# for each number from 1 to the number entered
# multiply total * number
# return the total product to the user

def is_int?(num)
  num.to_i.to_s == num
end

def prompt(str)
  puts ">> #{str}"
end

def get_number
  loop do
    prompt("Please enter an integer greater than 0:")
    num = gets.chomp
    return num if is_int?(num) && num.to_i > 0
    prompt("That doesn't look quite right")
  end
end

def get_choice
  loop do
    prompt("Enter 's' to compute the sum, 'p' to compute the product.")
    answer = gets.chomp.downcase
    return answer if answer == 'p' || answer == 's'
    prompt("That doesn't look quite right")
  end
end

def calculate_product(num)
  (1..num).reduce(:*)
end

def calculate_sum(num)
  (1..num).reduce(:+)
end

def print_product(num)
  prompt("The product of the integers between 1 and #{num} is #{calculate_product(num)}")
end

def print_sum(num)
  prompt("The sum of the integers between 1 and #{num} is #{calculate_sum(num)}")
end

num = get_number.to_i
choice = get_choice
case choice
when 'p'
  print_product(num)
else
  print_sum(num)
end