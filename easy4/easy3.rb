# leap years occur in every year that is evenly divisible by 4, unless the year is 
# also divisible by 100.  If the year is evenly divisible by 100, it is not a leap year 
# unless the year is also divisible by 400

# assume the rule is good for any year greater than year 0
# write a method that takes any year greater than 0 as input
# and returns true if the year is a leap year
# and false if it is not a leap year

def leap_year?(year)
  (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
end

# examples:

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true