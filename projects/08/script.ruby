Script started on 2021-03-31 14:13:40-0400
]0;jr232@goldvm12: ~/Desktop/cs214/projects/08[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/08[00m$ cat n NameT Tester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         03/31/21  
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

   ###########################################################################
   # initialize() makes a new Name object with the passed values
   # Recieve: first, middle, last (strings) to be stored in the Name class
   ###########################################################################
   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

   ########################################################
   # name.first, name.middle, name.last (to call)
   # Returns: the value at name.first (or middle or last)
   ########################################################
   attr_reader :first, :middle, :last

   ##############################################################################
   # Mutator function, changes specified field to a new value
   # To call: name.first = "newName" (or .middle, .last)
   ##############################################################################
   attr_writer :first, :middle, :last



   ########################################################
   # fullName() returns the full name (first middle last)
   ########################################################
   def fullName() 
      @first + " " + @middle + " " + @last
   end

   #print() prints the full name to the screen, and returns it
   def print() 
      puts fullName()
      fullName()
   end


   ##############################################################################
   # Mutator function, changes specified field to a new value
   # To call: name.first = "newName" (or .middle, .last)
   ##############################################################################
   attr_writer :first, :middle, :last

   ################################################################################
   # lfmi() returns the name of form last-first-first initial of middle
   # Returns: the name in the form lastName firstName middleName(first letter of) 
   ################################################################################
   def lfmi() 
      @last + " " + @first + " " + @middle[0]
   end

   #######################################################################################
   # readName() sets the name's 'first', 'middle', and 'last' fields to user inputed data
   # User must input strings for each name field
   #######################################################################################
   def readName()
      puts "Enter the new name"
      puts "First name  >"
      newFirst = gets()
      @first = newFirst.chomp      # .chomp removes the new line (\n) which allows this to work properly
      puts "Middle name  >"
      newMiddle = gets().chomp
      @middle = newMiddle
      puts "Last name  >"
      newLast = gets().chomp
      @last = newLast
   end


end 

def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   #test mutators 
   name.first = "Josiah"
   assert name.first == "Josiah", "name.first = 'Josiah' failed"
   name.middle = "Israel"
   assert name.middle == "Israel", "name.middle = 'Israel' failed"
   name.last = "Ryan"
   assert name.last == "Ryan", "name.last = 'Ryan' failed"
   name.print

   #test lfmi
   assert name.lfmi == "Ryan Josiah I", "name.lfmi failed"

   #test readName
   puts "to pass the test, enter 'Tim the destroyer'"
   name.readName
   assert name.print == "Tim the destroyer", "name.print failed"


   print "All tests passed!\n"
end

testName

]0;jr232@goldvm12: ~/Desktop/cs214/projects/08[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/08[00m$ ruby NameTester.r  
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- NameTester ([1;4mLoadError[m[1m)
[m]0;jr232@goldvm12: ~/Desktop/cs214/projects/08[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/08[00m$ ruby NameTester.rb
John Paul Jones
Josiah Israel Ryan
to pass the test, enter 'Tim the destroyer'
Enter the new name
First name  >
Tim
Middle name  >
The   the
Last name  >
D destroyer
Tim the destroyer
All tests passed!
]0;jr232@goldvm12: ~/Desktop/cs214/projects/08[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/08[00m$ exit

Script done on 2021-03-31 14:14:21-0400
