Script started on 2021-03-12 12:37:07-0500
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ cat Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Josiah Ryan
 * Date        : 03/11/21
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.nextLine();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/

  public static void splitter(String theString, int pos, String[] results)
   {
	String begining = theString.substring(0, pos);
    	String end = theString.substring(pos, theString.length());
	results[0] = begining;
	results[1] = end;
   } 

}
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ javac -deprecation Split.java
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
 and the second part is hello
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ exit

Script done on 2021-03-12 12:37:55-0500
