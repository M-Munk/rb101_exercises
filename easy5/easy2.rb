# time of day can be represented as the number of minutes before or after midnight
# if the number of minutes is positive, the time is after midnight.
# if the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the 
# time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# input integer in minutes
# output: time of day in a 24 hour format hh:mm (string?)
# how to add leading 0 on a number -> string? (hash maybe)

# data

# hh goes from 0 - 23 (range)
# mm goes from 0 - 59 (range)

# algorithm

# create 1 variable for hours and 1 variable for minutes
# h = 0, m = 0
#   minutes = number % 60
#   hours = number / 60 % 24 
# format numbers to a string
# return clock string

MINS_PER_HOUR = 60
HOURS_PER_DAY = 24

# def format_clock_numbers(int)
#   return '0' + int.to_s if int.to_s.size == 1
#   int.to_s
# end

def time_of_day(int)
  mins = int % MINS_PER_HOUR
  hours = int / MINS_PER_HOUR % HOURS_PER_DAY
  # "#{format_clock_numbers(hours)}:#{format_clock_numbers(mins)}"
  format('%02d:%02d', hours, mins)
end

# examples:

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
