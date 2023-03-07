Script started on 2021-04-12 14:30:58-0400
]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Duck.rbb [1@O[1@w[1@l[1@.[1@r[1@b[1@ [1@G[1@o[1@o[1@s[1@e[1@.[1@c[1@ljDuck.rb [A]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Owl.rb Goose.clj[1P
[K[A]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Owl.rb Goose.cl[1P[1P[1@r[1@b Duck.rb [A]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Owl.rb Goose.rb Duck.r
[A]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Owl.rb Goose.rb Duck.r[K
[K[A]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ cat Bird.rb Owl.rb Goose.rb Duck.rb  birds.rb
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
]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ [Krb uby birds.rb

Welcome to the Bird Park!

Hawkeye Bird says "Squaaaaaaawk!"
Donald Duck says "Quack Quack!"
Mother Goose says "Honk!"
Woodsey Owl says "Who Hooo!"


]0;jr232@goldvm07: ~/Desktop/cs214/labs/10/ruby[01;32mjr232@goldvm07[00m:[01;34m~/Desktop/cs214/labs/10/ruby[00m$ exit

Script done on 2021-04-12 14:32:13-0400
