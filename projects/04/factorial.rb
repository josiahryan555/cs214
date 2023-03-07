#! /usr/bin/ruby
# factorial.rb takes an int n and returns n!
#
# Author: Josiah Ryan
# Date  : 05 March 21
# Input:  an int n
# Precondition: n in an int
# Output: n! (n * (n-1) * (n-2) * ... * 1) #if n is positive


if __FILE__ == $0
   print "Enter an integer n and get n! \n"
   n = gets.to_i                   #converts string to int

   i = 1
   total = 1
   while i <= n 
     total = total * i         # makes n! calculations 
     i = i + 1
   end
   puts "%d! = %d" % [n, total]  # puts formated string
end

