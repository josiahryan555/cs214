Script started on 2021-04-14 02:10:55-0400
]0;jr232@goldvm10: ~/Desktop/cs214/projects/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/10/java[00m$ cat Bird.java Flying  Bird.java W alking  Bird.java Duck  .java Goose.java o Owl.java Penj guin.java Ostrich  .jva  ava Kiwiw.j   j .jav a Birds.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:  Josiah Ryan
 * Date:          04/09/21
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
  public Bird()
  {
    myName = "";
  } 

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Bird(String name)
  {
    myName = name;
  }

 /* Name accessor
  * Return: myName.
  */
  public String getName()
  {
    return myName;
  } 

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
  public String call()
  {
    return "Squaaaaaaaaaawk!";
  } 

  /* movement() returns the kind of movement the bird does
   * Return: "went past"
  */
  public String movement() {
    return "went past";
  }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName() + " just " + movement() + " and said " + call() );
  }


  private String myName;
}

/* FlyingBird.java provides an abstract FlyingBird subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/14/21
 ******************************************************/

public abstract class FlyingBird extends Bird
{
    
  /* default constructor
  * PostCond: myName == "".
  */
  FlyingBird() {
    super();
  }

  /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  FlyingBird(String name) {
    super(name);
 }

  /* movement() returns the kind of movement the bird does
   * Return "flew past"
   */ 
  public String movement() {
    return "flew past";
  }
}/* WalkingBird.java provides an abstract WalkingBird subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/14/21
 ******************************************************/

public abstract class WalkingBird extends Bird
{
    
  /* default constructor
  * PostCond: myName == "".
  */
  WalkingBird() {
    super();
  }

  /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  WalkingBird(String name) {
    super(name);
 }

  /* movement() returns the kind of movement the bird does
   * Return "walked past"
   */ 
  public String movement() {
    return "walked past";
  }
}/* Duck.java provides a Duck subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Duck extends FlyingBird
{
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Duck() {
    super();
 }

 public Duck(String name)
 {     
    super(name);
 } 

 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call()
  {
    return "Quack!";
  }
}

/* Goose.java provides a Goose subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Goose extends FlyingBird
{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose()
  {
     super();
  }

  public Goose(String name)
  {     
    super(name);
  } 

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call()
  {
    return "Honk!";
  } 
} 

/* Owl.java provides an Owl subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Owl extends FlyingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl()
  {
     super();
  }

  public Owl(String name)
  {     
    super(name);
  } 


 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call()
  {
    return "Whoo-hoo!";
  } 
} 

/* Penguin.java provides a Penguin subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/14/21
 ******************************************************/

public class Penguin extends WalkingBird
{
    
  /* default constructor
  * PostCond: myName == "".
  */
  public Penguin() {
    super();
 }

  /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
 public Penguin(String name)
 {     
    super(name);
 } 

 /* A Penguin's Call
  * Return: a Penguin-call ("Huh-huh-huh-huuuuh!").
  */
  public String call()
  {
    return "Huh-huh-huh-huuuuh!";
  }
}/* Ostrich.java provides a Ostrich subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/14/21
 ******************************************************/

public class Ostrich extends WalkingBird
{
    
  /* default constructor
  * PostCond: myName == "".
  */
  public Ostrich() {
    super();
 }

  /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
 public Ostrich(String name)
 {     
    super(name);
 } 

 /* A Ostrich's Call
  * Return: a Ostrich-call ("Huh-huh-huh-huuuuh!").
  */
  public String call()
  {
    return "Snork!";
  }
}/* Kiwi.java provides a Kiwi subclass of FlyingBird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/14/21
 ******************************************************/

public class Kiwi extends WalkingBird
{
    
  /* default constructor
  * PostCond: myName == "".
  */
  public Kiwi() {
    super();
 }

  /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
 public Kiwi(String name)
 {     
    super(name);
 } 

 /* A Kiwi's Call
  * Return: a Kiwi-call ("Huh-huh-huh-huuuuh!").
  */
  public String call()
  {
    return "Braaaaak!";
  }
}/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Penguin bird5 = new Penguin("Peter");
      bird5.print();

      Ostrich bird6 = new Ostrich("Orville");
      bird6.print();

      Kiwi bird7 = new Kiwi("Keven");
      bird7.print();
      System.out.println();
    }
}

]0;jr232@goldvm10: ~/Desktop/cs214/projects/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/10/java[00m$ [Kmake
javac -deprecation Birds.java
]0;jr232@goldvm10: ~/Desktop/cs214/projects/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/10/java[00m$ java bir   Birds.j  .. java
error: class found on application class path: Birds
]0;jr232@goldvm10: ~/Desktop/cs214/projects/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/10/java[00m$ java Birds.java     

Welcome to the Bird Park!

Hawkeye Bird just went past and said Squaaaaaaaaaawk!
Donald Duck just flew past and said Quack!
Mother Goose Goose just flew past and said Honk!
Woodsey Owl just flew past and said Whoo-hoo!
Peter Penguin just walked past and said Huh-huh-huh-huuuuh!
Orville Ostrich just walked past and said Snork!
Keven Kiwi just walked past and said Braaaaak!

]0;jr232@goldvm10: ~/Desktop/cs214/projects/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/10/java[00m$ exit

Script done on 2021-04-14 02:12:55-0400
