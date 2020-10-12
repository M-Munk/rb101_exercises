# write a method that takes an array of strings and returns an array
# of the same string values, except with the vowels (a, e, i, o, u)
# removed

# input = array of strings
# output = array of strings with vowels removed
# examples as given
# data - array of strings
# algorithm:
# iterate over array of strings
# delete vowels from strings

def remove_vowels(arr)
  arr.map { |string| string.delete "aeiouAEIOU" }
end

# Example:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
