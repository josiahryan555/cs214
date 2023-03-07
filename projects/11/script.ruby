Script started on 2021-04-21 12:53:48-0400
]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ cat list.rb
cat: list.rb: No such file or directory
]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ cat List.rb
# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:  Josiah Ryan
# Date:          04/21/21
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   def initialize()
      @first = nil
      @last = nil
      @length = 0
   end


   # create reader method for length

   # Replace this line with a statement to define a 'length' reader method


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print()
      temp = @first
      while !temp.nil?
         printf " #{temp.value}"
         temp = temp.next
      end
   end


   # find my maximum item
   # Return: my maximum item

   def maximum()
      temp = @first
      maxValue = -999999
      while !temp.nil?
         if temp.value > maxValue then 
            maxValue = temp.value
         end
         temp = temp.next
      end
      return maxValue
   end 

   # search(val) searches through the linked list for the specified value
   # Return: the index the value is found at, or -1 if it is not found
   def search(val)
      temp = @first
      index = 0
      while !temp.nil?
         if temp.value == val then
            return index                # if the value is the one searched for, return the index
         end
         temp = temp.next
         index += 1
      end      
      return -1                         # if the value being searched for was not found, return -1
   end


end

class Node
   def initialize(item, link)
      @value = item
      @next = link
   end

   attr_reader :value
   attr_accessor :next
end
]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ l cat search.rb
# search.rb finds the index of the specified value (99) in Ruby linked lists.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by:  Josiah Ryan
# Date:          04/21/21
#############################################################

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new  #empty case

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)

list1.print 
puts
puts "The index of 99 in list1: #{list1.search(99)}"

list2.print 
puts
puts "The index of 99 in list2: #{list2.search(99)}"

list3.print 
puts
puts "The index of 99 in list3: #{list3.search(99)}"

puts " empty list"
puts "The index of 99 in list4: #{list4.search(99)}"]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ ruby search
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- search ([1;4mLoadError[m[1m)
[m]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ ruby search.rb
 99 88 77 66 55
The index of 99 in list1: 0
 55 66 77 88 99
The index of 99 in list2: 4
 55 77 99 88 66
The index of 99 in list3: 2
 empty list
The index of 99 in list4: -1
]0;jr232@goldvm08: ~/Desktop/cs214/projects/11/ruby[01;32mjr232@goldvm08[00m:[01;34m~/Desktop/cs214/projects/11/ruby[00m$ exit

Script done on 2021-04-21 12:54:32-0400
