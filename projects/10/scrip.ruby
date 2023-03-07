Script started on 2021-04-15 12:12:14-0400
]0;jr232@gold12: ~/Desktop/cs214/projects/10/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/10/ruby[00m$ cat Bird.rb FlyingBird.rb WalkingBBird.rb Duck.rb Goose.rb Owl.rb Penguin.rb Ostrich.rb Kiwi.rb birds.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end


  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  # Returns "went by"
  def movement()
    return "went by"
  end 

  def print
    puts name + " " + className + " just " + movement + " and said \"" + call + "\""
  end


end

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
  
  end#Duck.rb | Defines the Duck class which inherits attributes and methods
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

# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird

  def call
    'Who Hooo!'
  end

end

# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

  def call
    'Huh-huh-huh-huuuuh!'
  end

end
# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

  def call
    'Snork'
  end

end
# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

  def call
    'Braaaaaak!'
  end

end# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/15/21
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'



puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Kiwi.new "Kevin"
bird6.print

puts "\n\n"
]0;jr232@gold12: ~/Desktop/cs214/projects/10/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/10/ruby[00m$ [Kruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird just went by and said "Squaaaaaaawk!"
Donald Duck just flew by and said "Quack Quack!"
Mother Goose just flew by and said "Honk!"
Woodsey Owl just flew by and said "Who Hooo!"
Peter Penguin just walked by and said "Huh-huh-huh-huuuuh!"
Orville Ostrich just walked by and said "Snork"
Kevin Kiwi just walked by and said "Braaaaaak!"


]0;jr232@gold12: ~/Desktop/cs214/projects/10/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/10/ruby[00m$ exit

Script done on 2021-04-15 12:12:26-0400
