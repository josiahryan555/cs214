# FlyingBird.rb | Defines a Bird subclass 
#   to be extended by specific Flying bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './Bird.rb'

class FlyingBird < Bird

    # this extends the movement() method in the Bird super class
    # returns "flew by"
    def movement()
        return "flew by"
    end
  
  end
  