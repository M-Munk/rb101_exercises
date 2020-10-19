# write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit

# input nested array of fruit and quantity (positive integer)
# outpu array of fruits with separate entries for each multiple of the same
# type of fruit

# create an empty array of fruits
# iterate over nested array
# for each quantity, add fruit listed to array created
# return array created

def buy_fruit(arr)
  fruits = []
  arr.each do |fruit, quantity|
    quantity.times { fruits << fruit }
  end
  fruits
end

# example:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]