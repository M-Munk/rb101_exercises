# write a function named xor that takes two arguments and returns true if 
# exactly one of its arguments is truthy and false otherwise.  
# output should be a boolean result

# input 2 arguments
# output: boolean

def xor?(arg1, arg2)
  !!(arg1 && !arg2 || !arg1 && arg2)
end

# needs the !! because if both values are nil, it will return nil instead of false without them

# examples:

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false