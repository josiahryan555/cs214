#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its length and width
# 
# Input: the length and width of a rectangle
# Precondition: the length and width is not negative
# Output: the area of the rectangle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan	
# Date: Feb/10/21
###############################################################

# function rectangleArea returns a rectangle's area, given its length and width
# Parameters: l,w numbers
# Precondition: l & w > 0.
# Returns: the area of a rectangle with length l and width w.
def rectangleArea(l,w)  #function declaration
    l * w  #function calculation that is returned
end #end of the function ( no { } ) 

if __FILE__ == $0 #only executes this if THIS file is being run
   puts "To compute the area of a rectangle," #prints the sting 
   print " enter its length: " #prints the string
   length = gets.chomp.to_f #sets length to user input
   print " enter its width: " #prints the string
   width = gets.chomp.to_f #sets width to user input
   print "The rectangle's area is: " # prints the string
   puts rectangleArea(length, width) #prints the rectangle area
end #ends 'main' call
