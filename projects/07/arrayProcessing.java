/* arrayProcessing.java is a class that provides two methods: printArray and readArray
 * 
 * Completed by: Josiah Ryan
 * Date        : 03/22/21
 ***************************************************************/

import java.util.Scanner;
import java.lang.Math;

public class arrayProcessing
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nEnter array size:");
      String str = keyboard.nextLine();
      int size = Integer.parseInt(str);
      double[] array = new double[size];     //creates an array of user specified size
      readArray(array);
      printArray(array);
      }
  
  /* readArray prompts user for the values to store into the array
   * Receive: 	an array 
   * Does   :  Stores user inputed values into the array
   *****************************************************/

  public static void readArray(double[] array) {	
    String moveStr;
    Scanner keyboard = new Scanner(System.in);
    System.out.println("Enter values into the array:");
      for (int i = 0; i<array.length; i++) {            //loops through the array reading in values from the user
       System.out.print("  >");
       moveStr = keyboard.nextLine();
       array[i] = Integer.parseInt(moveStr);
      }
  }
  
   /* printArray prints the array passed to it
   * Receive:  an array 
   * Does   :  prints the array
   *****************************************************/

  public static void printArray(double[] array) {	
    System.out.println("\nYour Array is:");

    for (int i = 0; i<array.length; i++) {
        System.out.println(array[i]);
       }
  }

}
