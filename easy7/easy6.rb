# Modify the method from the previous exercise so it ignores 
#  non-alphabetic characters when determining whether it should 
# uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the 
# return value; they just don't count when toggling the desired
# case

# capitalization starts with character at index 0 from examples

def staggered_case(string)
  cap = true
  result = ''
  string.each_char do |letter|
    if !(/[A-Za-z]/ =~ letter)
      result << letter
    elsif cap
      result << letter.upcase
      cap = !cap
    else
      result << letter.downcase
      cap = !cap
    end
  end
  result
end

# Examples:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
