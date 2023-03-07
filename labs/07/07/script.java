Script started on 2021-03-18 12:47:37-0400
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ cat Average.java
/* Average.java is a driver for method avg().
 *
 * Started by: Prof. Adams, for CS 214 at Calvin College
 *
 * Student Name: Josiah Ryan
 * Date: 03/18/21
 *
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

import java.io.*;

public class Average
{
  public static void main(String[] args) {

      double[] array0 = {9.0, 8.0, 7.0, 6.0};
      double[] array1 = {};

      // output the average of the values in the arrays
      System.out.println("The first average is " + avg(array0));
      System.out.println("The second average is " + avg(array1));
  }
  

  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/

  public static double sum(double[] theArray){ 
    double total = 0.0;
    for (int i = 0; i < theArray.length; i++){
        total += theArray[i];
    }
    return total;
}
  

  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   **************************************************************/
  
  public static double avg(double anArray[]) {
    if (anArray == null || anArray.length <= 0)
        return 0.0;
     else
        return sum(anArray) / anArray.length;
  }

}

]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ javac -deprecation Average.java
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ java Average
The first average is 7.5
The second average is 0.0
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ exit

Script done on 2021-03-18 12:48:00-0400
