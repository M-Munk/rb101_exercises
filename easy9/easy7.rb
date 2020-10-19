# Write a method that takes a first name, a space, and a last name passed as a 
# string arguemnt and returns a string that contains the last name, a comma,
# a space, and the first name

def swap_name(name)
  name.split.reverse.join(', ')
end

# Example:
p swap_name('Joe Roberts') == 'Roberts, Joe'
