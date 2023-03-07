# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         03/19/21
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(array)
   total = 0
   array.each { | item | total = total + item }     # each method performs the statments on each element 'item'
   total
end

###############################################
# average() computes the average of the array of values and returns it
# Receive: anArray, an array of numbers
# Return: the average of the values in anArray.
################################################
def average(array)
   if array.empty? 
      0.0
   else 
      sum(array) / array.size
   end
end

#main
def main
   array0 = []
   array1 = [9.0, 8.0, 7.0, 6.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main

