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
end