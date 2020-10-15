# Write a method that takes a String as an argument, and returns
# a new String that contains the original value using a staggered
# capitalization scheme in which every other character is
# capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but 
# count as characters when switching between upper and lowercase
# 
# based on examples, captitalize begins with characters located at 0 index

def staggered_case(string)
  result = ''
  string.split('').each_with_index do |char, index|
    result << char.downcase if index.odd?
    result << char.upcase if index.even?
  end
  result
end

# Examples: 
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
