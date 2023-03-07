Script started on 2021-03-05 15:37:23-0500
]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ cat factorial.rb
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

]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ruby factorial.rb
Enter an integer n and get n! 
5
5! = 120
]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ruby factorial.rb
Enter an integer n and get n! 
4
4! = 24
]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ruby factorial.rb
Enter an integer n and get n! 
3
3! = 6
]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ruby factorial.rb
Enter an integer n and get n! 
2
2! = 2
]0;jr232@goldvm18: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm18[00m:[01;34m~/Desktop/cs214/projects/04[00m$ exit

Script done on 2021-03-05 15:37:54-0500
