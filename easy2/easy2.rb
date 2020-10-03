# Build a program that asks a user for the length and 
# width of a room in meters and then displays the area 
# of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# input - 2 strings: length and width
# output - float

# rules: 1 square meter = 10.7639 square feet
# assume user input is valid

# Algorithm:
# get user input:
# get length of room in meters(string)
# get width of room in meters(string)
# convert length of room to float
# convert width of room to float
# calculate area of room in meters =
#   area_m = length * width
# convert area of room to feet =
#   area_f = area_m / 10.7639
# display area_m and area_f

def get_dimension_length
  puts('Enter the length of the room in meters: ')
  length = gets.chomp
  length.to_f
end

def get_dimension_width
  puts('Enter the width of the room in meters: ')
  width = gets.chomp
  width.to_f
end

def calculate_metric_area(length, width)
  length * width
end

def calculate_imperial_area(metric_area)
  metric_area * 10.7639
end

def display_area(metric_area, imperial_area)
  puts("The area of the room is #{metric_area} square meters (#{imperial_area} square feet)")
end

room_length = get_dimension_length
room_width = get_dimension_width
area = calculate_metric_area(room_length, room_width)
display_area(area, calculate_imperial_area(area))