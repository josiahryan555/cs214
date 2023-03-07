Script started on 2021-02-22 12:58:12-0500
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ cat java    GradeCalc.java
/*GradeCalc.java is a driver for function gradeCalc().
 *
 *By: Josiah Ryan
 *Date: feb/22/21
 ***********************************************************************/

import java.util.Scanner;

public class GradeCalc {

    public static void main(String[] args) {
	Scanner keyboard = new Scanner(System.in);
	System.out.println("\nEnter your grade (out of 100): "); // prompt
        int grade = keyboard.nextInt(); // reads in grade
	System.out.println(gradeCalc(grade)); // calculates grade and outputs it
    }

    /**************************************************************************
     * gradeCalc() converts a grade out of 100 into a letter grade.
     * 
     * Receive: grade, an int.
     * PRE: 0 =< grade <= 100
     * Return: the letter grade corresponding to the number grade given
     */
    public static char gradeCalc(int grade) {
	switch (grade / 10 ) {
	    
	case 10: case 9:
	    return 'A';
	case 8:
            return 'B';
         case 7:
            return 'C';
         case 6:
            return 'D';
         default:
            return 'F';
	}
      }	
}
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ cat GradeCalc.javaemacs homework02.c & ls[Kcd /home/jr232/Desktop/cs232/project002[A]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ split[K
[K[A]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ splitcd /home/jr232/Desktop/cs232/project002[A]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ls[K
[K[A]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ lsemacs homework02.c & [3Pcat GradeCalc.java[Kjavac deprecation GradeCalc.java
error: Class names, 'deprecation', are only accepted if annotation processing is explicitly requested
1 error
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ javac deprecation GradeCalc.java[1@-
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ java GradeCalc

Enter your grade (out of 100): 
99
A
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ java GradeCalc

Enter your grade (out of 100): 
87
B
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ java GradeCalc

Enter your grade (out of 100): 
78
C
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ java GradeCalc

Enter your grade (out of 100): 
63
D
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ java GradeCalc

Enter your grade (out of 100): 
34
F
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ exit

Script done on 2021-02-22 12:59:42-0500
