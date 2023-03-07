#Duck.rb | Defines the Dick class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/12/21
####################################################

require './Bird.rb'

class Duck < Bird

  def call
    'Quack Quack!'
  end

end

