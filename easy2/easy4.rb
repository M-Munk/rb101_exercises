# build a program that displays when the user will retire
# and how many years she has to work until retirement

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# input: 2 strings
# output: 2 years(current year, future year)

# ask user for current_age
# ask user for retirement_age
# calculate current year
# calculate retirement year = current year + (retirement_age - current_age)

current_year = Time.now.year

def is_int?(str)
  str.to_i.to_s == str
end

def get_age
  loop do
    puts "What is your age?"
    age = gets.chomp
    return age if is_int?(age)
    puts "That doesn't look quite right"
  end
end

def get_retire_age
  loop do
    puts "At what age would you like to retire?"
    retire_age = gets.chomp
    return retire_age if is_int?(retire_age)
    puts "That doesn't look quite right"
  end
end

def calculate_retirement_year(current_year, current_age, retirement_age)
  current_year + (retirement_age - current_age)
end

def print_information(current_year, current_age, retirement_age)
  puts "It's #{current_year}. You will retire in #{calculate_retirement_year(current_year, current_age, retirement_age)}"
  puts "You only have #{retirement_age - current_age} years of work to go!"
end

current_age = get_age.to_i
retirement_age = get_retire_age.to_i
print_information(current_year, current_age, retirement_age)