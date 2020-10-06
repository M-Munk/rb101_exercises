# write another method that returns true if the string passes as an argument is a palindrome
# false otherwise. Method should be case-insensitive and it should ignore all non-alphanumeric
# characters. 
def convert_string(str)
  str.downcase.split('').select { |char| char =~ /\w/ }.join
end

def real_palindrome?(str)
  convert_string(str) == convert_string(str).reverse
end

# examples:
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false