# arrayProcessing.java is a class that provides two methods: printArray and readArray
# 
# Completed by: Josiah Ryan
# Date        : 03/22/21
##########################################################

# readArray prompts user for the values to store into the array
# Receive: 	an array 
# Does   :  Stores user inputed values into the array
######################################################

def readArray (anArray)
  print "Enter array elements:\n"
  for i in 1..anArray.length() do             #loops through the array and stores user inputed values into array
    print "  >"
    item = gets()
    anArray[i] = item
  end 
end 

# printArray prints the array passed to it
# Receive:  an array 
# Does   :  prints the array
################################################
def printArray (anArray)
  print "your array is: \n"
  for i in 1..anArray.length() do           #loops through array and prints values from the array
    puts anArray[i]
  end
end

def main
  print "Enter the size of the array ";
  size = gets.to_i                        #gets size
  anArray = Array.new(size)  
  readArray(anArray)                      #reads in array
  printArray(anArray)                     #prints off array
end

main