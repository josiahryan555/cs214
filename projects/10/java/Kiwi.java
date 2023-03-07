/* Kiwi.java provides a Kiwi subclass of FlyingBird.
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
}