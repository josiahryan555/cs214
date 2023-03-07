#Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

  def call
    'Quack Quack!'
  end

end

