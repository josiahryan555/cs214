#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.to_f                   #converts string to float
   print "Enter the stop value: "
   stop = gets.to_f
   print "Enter the increment value: "
   step = gets.to_f
   
   while start <= stop
     print "The log10 of #{ start } is #{ Math.log10(start) }\n"
     start = start + step
   end 
end

