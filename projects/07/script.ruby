Script started on 2021-03-22 17:33:08-0400
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ cat array_proc  ocessing.rb
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
  print "your array is: "
  for i in 1..anArray.length() do           #loops through array and prints values from the array
    puts anArray[i]
  end
end

def main
  print "Enter the size of the array";
  size = gets.to_i                        #gets size
  anArray = Array.new(size)  
  readArray(anArray)                      #reads in array
  printArray(anArray)                     #prints off array
end

main]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ruby array_processing
array_processing:1: Invalid char `\x7F' in expression
array_processing:1: Invalid char `\x02' in expression
array_processing:1: Invalid char `\x01' in expression
array_processing:1: Invalid char `\x01' in expression
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ruby array_processing.rb
Enter the size of the array5
Enter array elements:
  >  >^Z
[1]+  Stopped                 ruby array_processing.rb
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ exit
There are stopped jobs.
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ruby array_processing.rb[Kcat array_processing.rb[5P./array_processing[1Pscript script.ada./array_processing[1Pscript script.ada./array_processing[1Pscript script.ada   ruby
Script started, file is script.ruby
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ cat array_processing.rb
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
  print "your array is: "
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

main]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ruby array_processing.rb
Enter the size of the array 5
Enter array elements:
  >1
  >2
  >3
  >4
  >5
your array is: 1
2
3
4
5

]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ exit
Script done, file is script.ruby
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ script.  script.j ruby
Script started, file is script.ruby
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ s cat array_processing.rb
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

main]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ruby array_processing.rb
Enter the size of the array 5
Enter array elements:
  >1
  >2
  >3
  >4
  >5
your array is: 
1
2
3
4
5

]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ exit
Script done, file is script.ruby
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ cd clojure
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07/clojure[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07/clojure[00m$ clojure -m array_processing. [A]0;jr232@goldvm12: ~/Desktop/cs214/projects/07/clojure[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07/clojure[00m$ clojure -m array_processing[K
[K[A]0;jr232@goldvm12: ~/Desktop/cs214/projects/07/clojure[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07/clojure[00m$ clojure -m array_processing
Enter the size of the array:4
Enter the array values:
  >1
  >2
  >3
  >4
null
null
null
null
3
4
5
6
7
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07/clojure[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07/clojure[00m$ exit
There are stopped jobs.