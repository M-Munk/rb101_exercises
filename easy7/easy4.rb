# Write a method that takes a string as an argument and returns
# a new string in which every uppercase letter is replaced by its 
# lowercase version, and every lowercase letter by its
# uppercase version. All other characters should be unchanged

def swapcase(string)
  cased = ''
  string.each_char do |letter|
    if ('a'..'z').cover?(letter)
      cased << letter.upcase
    elsif ('A'..'Z').cover?(letter)
      cased << letter.downcase
    else
      cased << letter
    end
  end
  cased
end

# Examples: 
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
