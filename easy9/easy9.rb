# write a method that determines the mean (average) of three scores passed to it
# and returns the letter value associated with that grade

# 90 <= score <= 100 A
# 80 <= score < 90 B
# 70 <= score < 80 C
# 60 <= score < 70 D
# 0 <= score < 60 F

# tested values are all between 0 and 100

def get_grade(grade_1, grade_2, grade_3)
  avg = (grade_1 + grade_2 + grade_3) / 3
  case avg
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

# Examples:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
