#Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

  def call
    'Honk!'
  end

end

