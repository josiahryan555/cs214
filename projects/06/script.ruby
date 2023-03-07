Script started on 2021-03-17 17:38:30-0400
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ cat quadratic.rb
## quadratic.adb recieves a quadratic equation and returns its roots
##
## Input: a, b, c (numbers)
## Precondition:  a, b, c of form ax^2 + bx + c  
## Output: roots of 'ax^2 + bx + c'
##
# Completed by: Josiah Ryan
# Date: 03/17/21
##########################################################

# getRoots() returns roots of given inputs          
# Receive: a, b, c of form ax^2 + bx + c     
# PRE: a != 0 , and b^2 - 4ac >= 0
# Passback: roots of the inputs when inputed into the above equation
######################################################

def getRoots (a, b, c)
  if a != 0 
    arg = b*b - 4*a*c
    if arg >= 0 
      #returns list with both roots
      [(-b + Math.sqrt(arg)) / (2*a), (-b - Math.sqrt(arg)) / (2*a), 1 ]
    else 
      print "*** getRoots(): b^2 - 4ac is negative!\n";
      [0, 0, 0]
    end
  else 
    print "*** getRoots(): a is zero!\n";
    [0, 0, 0]
  end 
end 


def main
  print "Enter a quadratic equation, enter a, b, c in of the form 'ax^2 + bx +c':\n";
  print "a:" ;
  a = gets.to_i
  print "b:"; 
  b = gets.to_i
  print "c:"; 
  c = gets.to_i
  roots = getRoots(a, b, c) # stores results in 'roots'
  if roots[2] == 1 
    puts "\nThe roots are" 
    puts roots[0] 
    puts roots[1]  
  end 
end

main]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ ruby quadratic.rb   
quadratic:1: Invalid char `\x7F' in expression
quadratic:1: Invalid char `\x02' in expression
quadratic:1: Invalid char `\x01' in expression
quadratic:1: Invalid char `\x01' in expression
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ ruby quadratic.rb
Enter a quadratic equation, enter a, b, c in of the form 'ax^2 + bx +c':
a:3
b:1
c:8
*** getRoots(): b^2 - 4ac is negative!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ ruby quadratic.rb
Enter a quadratic equation, enter a, b, c in of the form 'ax^2 + bx +c':
a:0
b:5
c:9
*** getRoots(): a is zero!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ ruby quadratic.rb
Enter a quadratic equation, enter a, b, c in of the form 'ax^2 + bx +c':
a:1
b:5
c:6

The roots are
-2.0
-3.0
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ ruby quadratic.rb
Enter a quadratic equation, enter a, b, c in of the form 'ax^2 + bx +c':
a:6
b:11
c:-35

The roots are
1.6666666666666667
-3.5
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ exit

Script done on 2021-03-17 17:39:21-0400
