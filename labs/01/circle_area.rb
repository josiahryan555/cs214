#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan	
# Date: Feb/05/21
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927 #sets a global variable pi
def circleArea(r)  #function declaration
    PI * r ** 2  #function calculation that is returned
end #end of the function ( no { } ) 

if __FILE__ == $0 #only executes this if THIS file is being run
   puts "To compute the area of a circle," #prints the sting 
   print " enter its radius: " #prints the string
   radius = gets.chomp.to_f #sets radius to user input
   print "The circle's area is: " # prints the string
   puts circleArea(radius) #prints the circle area
end #ends 'main' call
