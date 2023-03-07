Script started on 2021-02-24 14:00:25-0500
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ cat grade_calc.rb
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
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 100
Your letter grade is: A
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 90
Your letter grade is: A
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 87
Your letter grade is: B
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 78
Your letter grade is: C
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 67
Your letter grade is: D
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ruby grade_calc.rb
Enter a numeric grade between 0-100: 59
Your letter grade is: F
]0;jr232@goldvm16: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm16[00m:[01;34m~/Desktop/cs214/projects/03[00m$ exit

Script done on 2021-02-24 14:01:19-0500
