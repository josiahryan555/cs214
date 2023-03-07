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
