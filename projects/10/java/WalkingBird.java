/* WalkingBird.java provides an abstract WalkingBird subclass of Bird.
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
}