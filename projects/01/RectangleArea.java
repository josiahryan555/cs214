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

