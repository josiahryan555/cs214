/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student:  Josiah Ryan
 * Date:     03/29/21
 * *** run java -ea NameTester   to check for assertions
 ************************************************************/

import java.util.Scanner;

public class NameTester  
{
   public static void main(String[] args)  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;
      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      // test mutators
      aName.setFirst("Paul");
      assert aName.getFirst().equals("Paul");
      aName.setMiddle("Jones");
      assert aName.getMiddle().equals("Jones");
      aName.setLast("John");
      assert aName.getLast().equals("John");

      // test lfmi
      String lastFirstMiddleinitial = aName.lfmi();
      assert lastFirstMiddleinitial.equals("John Paul J");

      // test input function
      System.out.println("\nTo pass the assertion, set the name to josiah israel ryan");
      aName.reenterName();
      assert aName.getFirst().equals("josiah");
      assert aName.getMiddle().equals("israel");
      assert aName.getLast().equals("ryan");



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

   // setters
   // Paramaters: recieves a string
   // Does: sets the specified name to the passed string 'name'
   public void setFirst(String name) {
      myFirst = name;
   }
   public void setMiddle(String name) {
      myMiddle = name;
   }
   public void setLast(String name) {
      myLast = name;
   }

   // lfmi (last first middle initial) returns the name object in that order
   // Return: myLast myFirst (first initial of) myMiddle
   public String lfmi() {
      return myLast + ' ' + myFirst + ' ' + myMiddle.charAt(0);
   }

   // reenterName changes myFirst, myMiddle, and myLast to user inputed strings
   public void reenterName() {
      Scanner keyboard = new Scanner(System.in);
      System.out.print("Enter the new name\nFirst Name >");
      myFirst = keyboard.next();
      System.out.print("Middle Name >");
      myMiddle = keyboard.next();
      System.out.print("Last Name >");
      myLast = keyboard.next();
   }
 };

