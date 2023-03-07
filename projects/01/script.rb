Script started on 2021-02-10 13:48:22-0500
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ cat rectangle) _area.rb
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
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ cat rectangle_area.rbls[Kcd /home/jr232/Desktop/cs214/labs/01 [A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ ls[K
[K[A]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ lscat rectangle_area.rb[Kruby rectagl  ngle_area.rb
To compute the area of a rectangle,
 enter its length: 10
 enter its width: 10
The rectangle's area is: 100.0
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its length: 2
 enter its width: 3.345
The rectangle's area is: 6.69
]0;jr232@goldvm19: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm19[00m:[01;34m~/Desktop/cs214/projects/01[00m$ exit

Script done on 2021-02-10 13:49:15-0500
