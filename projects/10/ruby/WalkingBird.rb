# WalkingBird.rb | Defines a Bird subclass 
#   to be extended by specific walking bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './Bird.rb'

class WalkingBird < Bird

    # this extends the movement() method in the Bird super class
    # returns "walked by"
    def movement()
        return "walked by"
    end
  
  end