Script started on 2021-04-15 12:11:16-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ ruby birds.rbcat Bird.rb FlyingBird.rb WalkingBird..rb Duck.rb Goose.rb Owl.rb Penguin.rb Ostrich.rb Kiwi.rb birds.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/12/21
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

  def print
    puts name + " " + className + " says \"" + call + "\""
  end


end

cat: FlyingBird.rb: No such file or directory
cat: WalkingBird.rb: No such file or directory
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

#Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/12/21
####################################################

require './Bird.rb'

class Goose < Bird

  def call
    'Honk!'
  end

end

# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/12/21
####################################################

require './Bird.rb'

class Owl < Bird

  def call
    'Who Hooo!'
  end

end

cat: Penguin.rb: No such file or directory
cat: Ostrich.rb: No such file or directory
cat: Kiwi.rb: No such file or directory
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Josiah Ryan
# Date:          04/12/21
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"
]0;jr232@gold12: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ [Kexit
