# you are given a method named spin_me that takes a string as an argument
# and returns a string that contains the same words, put with each word's 
# characters reversed. Given the method's implementation, will the returned
# string be the same object as the one passed in as an argument or a different
# object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# str.split returns a new array = object = ['hello', 'world']
# arr.each returns the original unnamed array object
# word.reverse mutates the string objects inside the unnamed array object ['olleh', 'dlrow']
# join creates a new string object created by converting each element of the array to 
# a string separated by the given separator " ". "olleh dlrow"
# the string object returned is a different string object.