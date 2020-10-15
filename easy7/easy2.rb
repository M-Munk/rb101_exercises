# Write a method that takes a string, and then returns a hash that
# contains 3 entries: one represents the number of characters
# in the string that are lowercase letters, one the number of 
# characters that are upercase letters, and one the number
# or characters that are neither.

def letter_case_count(string)
  char = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |letter|
    if ("a".."z").cover?(letter)
      char[:lowercase] += 1
    elsif ("A".."Z").cover?(letter)
      char[:uppercase] += 1
    else
      char[:neither] += 1
    end
  end
  char
end

# Examples:
p letter_case_count('abCdez 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
