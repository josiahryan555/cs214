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
