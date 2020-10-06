# Write a method that takes a year as input and returns the century
# The return value should be a string that begins with the century number
# and ends with st, nd, rd, or th as appropriate for that number

ENDING = %w[th st nd rd th th th th th th].freeze

def century(year)
  if year % 100 == 0
    century = (year / 100) 
  else
    century = (year / 100) + 1
  end
  if century.digits[1] == 1
    "#{century}#{ENDING[0]}"
  else
    "#{century}#{ENDING[century.digits.first]}"
  end
end

# examples:

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'