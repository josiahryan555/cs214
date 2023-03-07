Script started on 2021-03-17 17:46:40-0400
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ cat q Quadratic.jv ava
/* Quadratic.java is a class and program that returns the roots of a quadratic equation
 * input: a quadratic equation.
 * 
 * Begun by: Josiah Ryan Serita
 * Completed by: Josiah Ryan
 * Date        : 03/15/21
 ***************************************************************/

import java.util.Scanner;
import java.lang.Math;

public class Quadratic
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nEnter a quadratic equation of form 'ax^2 + bx + c': ");
      
      //gets a, b, c and converts them into ints
      System.out.println("\nEnter a: ");
      String str = keyboard.nextLine();
      int a = Integer.parseInt(str);
      System.out.println("\nEnter b: ");
      str = keyboard.nextLine();
      int b = Integer.parseInt(str);
      System.out.println("\nEnter c: ");
      str = keyboard.nextLine();
      int c = Integer.parseInt(str);
     
      double[] resultList = new double[3];
      
      resultList = getRoots(a, b, c, resultList);
      if (resultList[2] == 1.0) {     // resultList[2] = 1 if valid (no errors) and = 0 if invalid (errors occured)
        System.out.println("\nThe roots are: \n " + resultList[0] + "\n" + resultList[1]); 
      }
    }
  
  /* getRoots() gets the roots of a quadratic equation
   * Receive: 	a, b, c (ints) of form 'ax^2 + bx + c' and return list (double)
   * Returns: result list with roots in resultList[0] & resultList[1]
   *****************************************************/

    public static double[] getRoots(int a, int b, int c, double[] resultList)
   {	
       if (a != 0) {
	    double arg = Math.pow(b, 2.0) - 4 * a * c;
	    if (arg >= 0) {
		resultList[0] = (-b + Math.sqrt(arg))/(2*a);    // computes roots
		resultList[1] = (-b - Math.sqrt(arg))/(2*a);    // computes roots
    resultList[2] = 1.0;                              // tells main that the results are valid
		return resultList;
	    } else {
		System.out.println("\n*** quadraticRoots(): b^2 - 4ac is negative!");
		resultList[0] = resultList[1] = resultList[2] = 0;
		return resultList;
	    }
       } else {  // a = 0
	System.out.println ("\n*** QuadraticRoots(): a is zero!");
         resultList[0] = resultList[1] = resultList[2] = 0 ;
         return resultList;
      }
  }
}
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ javac -deprecation Quadratic. 
error: Class names, 'Quadratic', are only accepted if annotation processing is explicitly requested
1 error
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ javac -deprecation Quadratic.java
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ java q Quadratic

Enter a quadratic equation of form 'ax^2 + bx + c': 

Enter a: 
3

Enter b: 
1

Enter c: 
8

*** quadraticRoots(): b^2 - 4ac is negative!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ java Quadratic

Enter a quadratic equation of form 'ax^2 + bx + c': 

Enter a: 
0

Enter b: 
5

Enter c: 
9

*** QuadraticRoots(): a is zero!
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ java Quadratic

Enter a quadratic equation of form 'ax^2 + bx + c': 

Enter a: 
1

Enter b: 
5

Enter c: 
6

The roots are: 
 -2.0
-3.0
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ java Quadratic

Enter a quadratic equation of form 'ax^2 + bx + c': 

Enter a: 
6

Enter b: 
11

Enter c: 
-35

The roots are: 
 1.6666666666666667
-3.5
]0;jr232@goldvm10: ~/Desktop/cs214/projects/06[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/06[00m$ exit

Script done on 2021-03-17 17:47:56-0400
