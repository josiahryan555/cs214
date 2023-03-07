Script started on 2021-04-02 13:45:44-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/09/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/ruby[00m$ cat Name.rb
# Name.rb is a Name class and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         04/02/2021
####################################################

Module Names
  def Names.initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end

  attr_reader :first, :middle, :last
  def Names.fullName
    @first + " " + @middle + " " + @last
  end

  def Names.print
    puts fullName
    fullName
  end
end]0;jr232@gold12: ~/Desktop/cs214/labs/09/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/ruby[00m$ cat nameTester.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:         04/02/2021
####################################################

require 'test/unit/assertions'
#require './name.rb'
load 'name.rb'
include Test::Unit::Assertions



def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;jr232@gold12: ~/Desktop/cs214/labs/09/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/ruby[00m$ ruby nameTester.b rb
John Paul Jones
All tests passed!
]0;jr232@gold12: ~/Desktop/cs214/labs/09/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/ruby[00m$ exit

Script done on 2021-04-02 13:46:20-0400
