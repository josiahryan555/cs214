Script started on 2021-03-12 13:46:23-0500
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ cat a split.rb
# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date: 03/12/21
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

def split (aString, position)
  [aString.slice(0...position), aString.slice(position..aString.length)] # .. range inclusive, ... range exclusive
end 


def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 0
The first part is: 
and the second part is: hello
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ruby   uby split.rb
To split a string, enter the string: hello
Enter the split position: 3
The first part is: hel
and the second part is: lo
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 5
The first part is: hello
and the second part is: 
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ exit

Script done on 2021-03-12 13:46:49-0500
