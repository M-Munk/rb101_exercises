# Write two methods that each take a time of day in 24 hour format and return the number
# of minutes before and after midnight, respectively.
# both methods should return a value in the range of 0..1439

# you may not use ruby's time and date methods

# input: string where first 2 digits represent the hour & the last 2 digits represent 
# minutes separated by a : 

# output: integer representation of number of minutes before or after midnight
# range of output restricted to 0..1439

# constants: number of minutes in hour = 60
# number of hours in day = 24
# number of minutes in day = #hours in day * #minutes in hour

# 24:00 == 00:00

# data - time format lends itself to being split into an array of [hours, minutes]

# algorithm:
# after_midnight:
# split string into hours and minutes array


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(string)
  time_array = string.split(':')
  hours = time_array[0].to_i % HOURS_PER_DAY
  minutes = time_array[1].to_i
  hours * MINUTES_PER_HOUR + minutes
end

def before_midnight(string)
  time_array = string.split(':')
  hours = (HOURS_PER_DAY - time_array[0].to_i) % HOURS_PER_DAY
  minutes =  time_array[1].to_i
  hours * MINUTES_PER_HOUR - minutes
end

# examples: 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p before_midnight('22:57') == 63
p after_midnight('01:03')  == 63
