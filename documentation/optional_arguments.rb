require 'date'

puts Date.new

#-4712-01-01
#=> nil

puts Date.new(2016)

# 2016-01-01
# => nil

puts Date.new(2016, 5)

# 2016-05-01
# => nil

puts Date.new(2016, 5, 13)

# 2016-05-13
# => nil

# What will each of the 4 puts statements print?

# Documentation can be found in the Std-lib documentation
# new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
# format is year, month, day.  Year, month, and day are all optional
# if no information is provided, it will default to -4712 year 
# if no month or day is put, it will default to the first day and/or first month

