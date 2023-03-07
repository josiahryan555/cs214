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

main