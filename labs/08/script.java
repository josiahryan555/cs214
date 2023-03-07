Script started on 2021-03-25 13:17:14-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student:  Josiah Ryan
 * Date:     03/25/21
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
    Name aName = new Name("John", "Paul", "Jones");
//
    assert aName.getFirst().equals("John") ;
    assert aName.getMiddle().equals("Paul") ;
    assert aName.getLast().equals("Jones") ;

    System.out.println(aName);
    assert aName.toString().equals("John Paul Jones");

    System.out.println("All tests passed!");
  }
}

class Name
  {
  private String myFirst,
                 myMiddle,
                 myLast;

  public Name(String first, String middle, String last)
   {
      myFirst = first;
      myMiddle = middle;
      myLast = last;
   }

   public String getFirst()
   {
      return myFirst;
   }

   public String getMiddle()
   {
      return myMiddle;
   }

   public String getLast()
   {
      return myLast;
   }

   public String toString()
   {
      return myFirst + ' ' + myMiddle + ' ' + myLast;
   }

   public void print() {
    System.out.println( toString() );
  } 
 };

]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ make java
make: Nothing to be done for 'java'.
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ java    java -ea nameT     NameTester
John Paul Jones
All tests passed!
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ exit

Script done on 2021-03-25 13:18:10-0400
