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
}