# write a method that takes two arguments: the first is a starting number,
# and the second is the ending number. Print out all numbers between the 
# two numbers, except if a number is divisible by 3, print "Fizz", if a
# number is divisible by 5, print "Buzz", and finally if a number is
# divisible by 3 and 5 print "FizzBuzz"

# input: starting integer & ending integer
# output: string substituting Fizz for numbers 
# divisible by 3, Buzz for numbers divisible by 5, and FizzBuzz 
# for numbers divisible by 3 and 5 (15)

def fizzbuzz(start, finish)
  result = (start..finish).map do |num|
    if num % 15 == 0 then 'FizzBuzz'
    elsif num % 3 == 0 then 'Fizz'
    elsif num % 5 == 0 then 'Buzz'
    else num
    end
  end
  result.join(', ')
end

# Example:
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
