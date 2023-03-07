Script started on 2021-02-08 13:27:13-0500
]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ cat
^[[A^[[A^[[A            ^[[D    ]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ cat Rectanle  gle/ Area.java
/* RectangleArea.java computes the area of a rectangle.
	   *
	   *  * Input: length and width of the rectangle.
	   *   * Precondition: Side lengths must be a positive number.
	   *    * Output: The area of the rectangle.
	   *     *
	   *      * Begun by: Dr. Adams, for CS 214, at Calvin College.
	   *       * Completed by: Josiah Ryan
	   *        * Date: Feb/08/21
	   *         **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

	     /* function rectangleArea() computes a rectangle's area, given its side lengths.
	      *       * Parameters: l,w :  doubles
	      *       * Precondition: l & w are not negative.
	      *       * Returns: the area of the rectangle
	      *                         */
	     public static double rectangleArea(double l, double w) {
		             return l * w;           // return an expression
			          } // rectangleArea method
	     	
	    //main program
	          public static void main(String[] args) {
	                // prompt for length and width
	                System.out.println("\n\nTo compute the area of a rectangle,");
	                //get length from the user
			  System.out.println(" enter its length: ");
	                  // Create a connection named keyboard to standard in
	                  Scanner keyboard = new Scanner(System.in);
	                  //Get the number from the user
	                  double length = keyboard.nextDouble();

	                //get width from user
			  System.out.println(" enter its width: ");
			  double width = keyboard.nextDouble();
		       
			// output area
	                System.out.println("\nThe area is " + rectangleArea(length, width) + "\n");
	                System.out.printf("The area is %f\n\n", rectangleArea(length, width));
			System.out.printf("The area is %.15f\n\n", rectangleArea(length, width));
                   } // main method
              } // class RectangleArea

]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ javac -deprecation CircleAe rea.java
error: file not found: CircleArea.java
Usage: javac <options> <source files>
use --help for a list of possible options
]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ javac -deprecation CircleArea.java[1P[1P[1P[1P[1P[1P[1@R[1@e[1@c[1@t[1@a[1@n[1@glArea.java [A]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ javac -deprecation RectangleArea.javaa[A]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ javac -deprecation Rectangle

]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ [KCircleArea[1@j[1@a[1@v[1@a[1@ CircleArea
Error: Could not find or load main class CircleArea
Caused by: java.lang.ClassNotFoundException: CircleArea
]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ java CircleArea.java
Error: Could not find or load main class CircleArea.java
Caused by: java.lang.ClassNotFoundException: CircleArea.java
]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ java CircleArea.java               RectangleArea.ja     


To compute the area of a rectangle,
 enter its length: 
23
 enter its width: 
1.5

The area is 34.5

The area is 34.500000

The area is 34.500000000000000

]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its length: 
3.5
 enter its width: 
5.5

The area is 19.25

The area is 19.250000

The area is 19.250000000000000

]0;jr232@goldvm06: ~/Desktop/cs214/projects/01[01;32mjr232@goldvm06[00m:[01;34m~/Desktop/cs214/projects/01[00m$ exit

Script done on 2021-02-08 13:32:58-0500
