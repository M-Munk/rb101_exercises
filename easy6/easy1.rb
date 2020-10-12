# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes, and seconds.  You should use a degree symbol  (°) 
# to represent degrees, a single quote (') to represent minutes, and a
# double quote (") to represent seconds.  A degree has 60 minutes, a 
# minute has 60 seconds.

# Your results may differ slightly from the examples given depending on 
# hour you round values, but should be within a second or two of the results
# shown.

# You should use two digit numbers with leading zeros when formating the 
# minutes and seconds, e.g. 321°03'07".

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"
CONVERT = 60

# Math information:
# To convert decimal degrees to dms:
# for the degrees use the whole number part of the decimal
# for the minutes multiply the remaining decimal by 60
# use the whole number part of the answer as minutes
# for the seconds multiply the new remaining decimal by 60

# input -> float
# output -> string representation of degrees, minutes, seconds
# examples are given
# data 
# algorithm -> use divmod & to_i to find the number before decimal and after 
# decimal.
# to_i returns degrees
# divmod remainder times 60 
# to_i returns minutes
# divmod remainder times 60
# to_i returns seconds
# format string

def format_num (num)
  "%02d" % num
end

def dms(angle)
  degree = angle.to_i
  if degree == 0
    minute = 0
  else
    degree_arr = angle.divmod(degree)
    minute = (degree_arr[1] * CONVERT).to_i
  end
  if minute == 0
    second = 0
  else
    min_arr = (degree_arr[1] * CONVERT).divmod(minute)
    second = (min_arr[1] * CONVERT).to_i
  end
  "#{degree}#{DEGREE}#{format_num(minute)}'#{format_num(second)}\""
end

# answer given in solutions:
# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# Examples:

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
