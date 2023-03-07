Script started on 2021-03-26 13:27:33-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         03/25/21  
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

end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ ruby NameTet ster
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- NameTester ([1;4mLoadError[m[1m)
[m]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ ruby NameTester.rb
John Paul Jones
All tests passed!
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ exit

Script done on 2021-03-26 13:27:57-0400
