# write a method that takes a positive integer n as an argument and displays
# a right triangle whose sides each have n stars. The hypotenuse of the 
# triangle should have one end at the lower-left of the triangle, and the 
# other end at the upper-right

def triangle(n)
  space = ' '
  star = '*'
  counter = 1
  loop do
    break if counter > n
    puts (space * (n - counter) + star * counter)
    counter += 1    
  end
end

# Examples:
triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********