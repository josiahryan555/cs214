#! /usr/bin/ruby
# grade_calc.rb translates an integer represented grade to a letter grade
# Author: Josiah Ryan
# Date: 02/24/21
##############################################################################

# Input:  a integer grade
# Precondition: The the grade should be between 0 and 100
# Output: the letter grade corresponding to the int grade given

def gradeCalc(grade)
  case grade / 10 # switch-case
  when 10, 9
    "A"
  when 8
    "B"
  when 7
    "C"
  when 6
    "D"
  else
    "F"
  end
end

if __FILE__ == $0
  print "Enter a numeric grade between 0-100: "
  grade = gets            #gets input
  print "Your letter grade is: "
  puts gradeCalc(grade.to_i) # .to_i converts string to int
end
