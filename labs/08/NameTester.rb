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

