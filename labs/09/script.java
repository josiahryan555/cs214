Script started on 2021-04-01 12:56:50-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/java[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Josiah Ryan
 * Date: 04/01/21
 ************************************************************/


public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}

 ]0;jr232@gold12: ~/Desktop/cs214/labs/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/java[00m$ cat Name.java
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Josiah Ryan
 * Date:    04/01/21
 ************************************************************/


// the Name class appears outside of the rest of the program
class Name {

  // Name object constructor with initialization  
  public Name(final String first, final String middle, final String last) {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
  }
 
  // extractor for first name of a Name object
  public final String getFirst() {
      return myFirst;
  }

  // extractor for middle name of a Name object
  public final String getMiddle() {
      return myMiddle;
  }

  // extractor for last name of a Name object
  public final String getLast() {
      return myLast;
  }
  
  // return string created by piecing together first, middle, and last names
  public final String toString() {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  private String myFirst, myMiddle, myLast;  // private instance variables
}
]0;jr232@gold12: ~/Desktop/cs214/labs/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/java[00m$ make NameTester
make: Nothing to be done for 'NameTester'.
]0;jr232@gold12: ~/Desktop/cs214/labs/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/java[00m$ java Name  Tester
John Paul Jones
All tests passed!
]0;jr232@gold12: ~/Desktop/cs214/labs/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/09/java[00m$ exit

Script done on 2021-04-01 12:57:50-0400
