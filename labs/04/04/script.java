Script started on 2021-02-25 13:02:49-0500
]0;jr232@gold14: ~/Desktop/cs214/labs/04/04[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ cat java      LogTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Josiah Ryan
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    
    
    while (start <= stop)  {
	System.out.printf("The logarithm of %f is %f\n", start, Math.log10(start));
	start = start +  increment;
    }
  }
}

]0;jr232@gold14: ~/Desktop/cs214/labs/04/04[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ cat LogTable.javaemacs year_codes.rb[2Pcat LogTable.javaemacs year_codes.rbscript project03.txt[7Pcat project03             javac -deprecation LogTable.java
]0;jr232@gold14: ~/Desktop/cs214/labs/04/04[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ . java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
10  10      1
10
.5
The logarithm of 1.000000 is 0.000000
The logarithm of 1.500000 is 0.176091
The logarithm of 2.000000 is 0.301030
The logarithm of 2.500000 is 0.397940
The logarithm of 3.000000 is 0.477121
The logarithm of 3.500000 is 0.544068
The logarithm of 4.000000 is 0.602060
The logarithm of 4.500000 is 0.653213
The logarithm of 5.000000 is 0.698970
The logarithm of 5.500000 is 0.740363
The logarithm of 6.000000 is 0.778151
The logarithm of 6.500000 is 0.812913
The logarithm of 7.000000 is 0.845098
The logarithm of 7.500000 is 0.875061
The logarithm of 8.000000 is 0.903090
The logarithm of 8.500000 is 0.929419
The logarithm of 9.000000 is 0.954243
The logarithm of 9.500000 is 0.977724
The logarithm of 10.000000 is 1.000000
]0;jr232@gold14: ~/Desktop/cs214/labs/04/04[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/04/04[00m$ exit

Script done on 2021-02-25 13:04:00-0500
