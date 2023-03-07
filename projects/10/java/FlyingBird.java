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
}