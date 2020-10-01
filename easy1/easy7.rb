# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting
# with 1. The length of the string should match the given 
# integer

def stringy(num)
  str = ''
  num.times do |i|
    i.even? ? str << "1" : str << "0"
  end
  puts str
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)