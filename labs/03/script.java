Script started on 2021-02-18 13:04:46-0500
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cat Ya earCodes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */
    public static int yearCode(String year) {
	if (year.equals("freshman"))
	    return 1;
	else if (year.equals("sophomore"))
	    return 2;
	else if (year.equals("junior"))
	    return 3;
	else if (year.equals("senior"))
	    return 4;
	else
	    return 0;
    }
}
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cat YearCodes.javals[K[7@cd Gradesls[Kcd /home/cs/214/current/jr232p cs214project02 /home/cs/214/current/jrr232[A]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ c[11Pd /home/cs/214/current/jr232
[K[A]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cd /home/cs/214/current/jr232ls[K[7@cd Gradesls[Kcat YearCodes.java[Kcat YearCodes.javals[K[7@cd Gradesls[Kcd /home/cs/214/current/jr232ls[K[7@cd Gradesls[Kcat YearCodes.java[Kjava YearCode
Error: Could not find or load main class YearCode
Caused by: java.lang.ClassNotFoundException: YearCode
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ java YearCodes

Enter your academic year: 
freshman
1
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ java YearCodes

Enter your academic year: 
sophomre  ore
2
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ java YearCodes

Enter your academic year: 
junior
3
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ java YearCodes

Enter your academic year: 
senior
4
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ java YearCodes

Enter your academic year: 
time    the bean
0
]0;jr232@maroon13: ~/Desktop/cs214/labs/03[01;32mjr232@maroon13[00m:[01;34m~/Desktop/cs214/labs/03[00m$ exit

Script done on 2021-02-18 13:06:05-0500
