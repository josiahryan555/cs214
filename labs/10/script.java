Script started on 2021-04-09 21:10:24-0400
]0;jr232@goldvm10: ~/Desktop/cs214/labs/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/labs/10/java[00m$ cat Bird.java Bird. s     Duck.java ava  G o o s e . j a a [1P v a  [A]0;jr232@goldvm10: ~/Desktop/cs214/labs/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/labs/10/java[00m$ cat Bird.java Duck.java Goose.java
 O w l . j a v a   D [1P B i r d s . j a v a 
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

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName() + " says " + call() );
  }


  private String myName;
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Duck extends Bird
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

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Goose extends Bird
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

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 * Date:         04/09/21
 ******************************************************/

public class Owl extends Bird {

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

/* Birds.java illustrates inheritance and polymorphism.
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
      System.out.println();
    }
}

]0;jr232@goldvm10: ~/Desktop/cs214/labs/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/labs/10/java[00m$ [Kmake
javac -deprecation Birds.java
]0;jr232@goldvm10: ~/Desktop/cs214/labs/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/labs/10/java[00m$ java Bire ds

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Whoo-hoo!

]0;jr232@goldvm10: ~/Desktop/cs214/labs/10/java[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/labs/10/java[00m$ exit

Script done on 2021-04-09 21:11:21-0400
