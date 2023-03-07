/* Ostrich.java provides a Ostrich subclass of FlyingBird.
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
}