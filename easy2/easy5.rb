# Write a program that will ask for a user's name.
# The program will then greet the user.
# If the user writes "name!" then
# the computer yells back to the user

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# input: string
# output: string

# ask user for name
# check if name ends with !
# if name ends with ! yell at user
# else greet user normally

puts "What is your name?"
name = gets.chomp
if name.end_with?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end