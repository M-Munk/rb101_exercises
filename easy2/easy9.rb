name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# what does this code output and why?
# name -> 'Bob'
# save_name -> 'Bob'
# name reassigned -> 'Alice'
# outputs: 
# Alice
# Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out?

# name -> 'Bob'
# save_name -> 'Bob'
# save_name and name are pointing to the same object when upcase! is called so:
# name, save_name -> BOB
# BOB
# BOB


