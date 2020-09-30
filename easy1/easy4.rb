# write a method that counts the number of occurances of each element 
# in a given array

def count_occurences(arr)
  count = Hash.new(0)
  arr.each { |item| count[item.downcase] += 1 }
  count.each { |key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'CAR', 'truck'
]

count_occurences(vehicles)