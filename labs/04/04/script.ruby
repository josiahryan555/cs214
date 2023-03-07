Script started on 2021-02-26 21:13:13-0500
]0;jr232@maroon10: ~/Desktop/cs214/labs/04/04[01;32mjr232@maroon10[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ cat lot gTable. .rb
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

]0;jr232@maroon10: ~/Desktop/cs214/labs/04/04[01;32mjr232@maroon10[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ ruby logTable.r  .rg b
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: .5
The log10 of 1.0 is 0.0
The log10 of 1.5 is 0.17609125905568124
The log10 of 2.0 is 0.3010299956639812
The log10 of 2.5 is 0.3979400086720376
The log10 of 3.0 is 0.47712125471966244
The log10 of 3.5 is 0.5440680443502757
The log10 of 4.0 is 0.6020599913279624
The log10 of 4.5 is 0.6532125137753437
The log10 of 5.0 is 0.6989700043360189
The log10 of 5.5 is 0.7403626894942439
The log10 of 6.0 is 0.7781512503836436
The log10 of 6.5 is 0.8129133566428556
The log10 of 7.0 is 0.8450980400142568
The log10 of 7.5 is 0.8750612633917001
The log10 of 8.0 is 0.9030899869919435
The log10 of 8.5 is 0.9294189257142927
The log10 of 9.0 is 0.9542425094393249
The log10 of 9.5 is 0.9777236052888477
The log10 of 10.0 is 1.0
]0;jr232@maroon10: ~/Desktop/cs214/labs/04/04[01;32mjr232@maroon10[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ exit

Script done on 2021-02-26 21:14:24-0500
