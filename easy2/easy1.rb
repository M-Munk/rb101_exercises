# Build a program that randomly generates and prints 
# Teddy's age. To get the age, you should generate a 
# random number between 20 and 200.
#
# Modify this program to ask for a name, and then print 
# the age for that person. For an extra challenge, use 
# "Teddy" as the name if no name is entered.

def gets_teddy_name
  puts("What is the name of your teddy?")
  name = gets.chomp
  if name.empty?
    "Teddy"
  else 
    name
  end
end

def gets_teddy_age
  age = Random.new
  age.rand(20..200)
end

def print_teddy_age(name)
  puts "#{name} is #{gets_teddy_age} old!"
end

teddy_name = gets_teddy_name
print_teddy_age(teddy_name)