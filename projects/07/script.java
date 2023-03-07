Script started on 2021-03-22 14:42:13-0400
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ cat array  Processing.java
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
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ javac -deprecation arrap yProcessing.j ava
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ [Kjava arrayProcessing

Enter array size:
5
Enter values into the array:
  >1
  >2
  >3
  >4
  >5

Your Array is:
1.0
2.0
3.0
4.0
5.0
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ exit

Script done on 2021-03-22 14:42:50-0400
