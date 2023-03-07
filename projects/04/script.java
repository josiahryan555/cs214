Script started on 2021-03-02 17:22:40-0500
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ cat Factorial.java
/* Factorial.java recieves an integer n then computes and returns n!
 *
 * Input: n
 * PRE: n is an integer
 * Output: !n (or n*(n-1)*(n-2)*...* 1) --if n is postive that is)
 * Author: Josiah Ryan
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.print("\nTo compute n!, enter n: ");
    int n;
    int nFactorial = 1;
    n = keyboard.nextInt();

    // calculates n! and stores it in nFactorial
    for (int i=1; i<=n; i++){ 
	nFactorial *= i;  //returns 24 if n = 5
    }
    System.out.printf("\n%d! = %d\n\n", n, nFactorial);
    
  }
}

]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ java    cat Factorial.java[4Pjava Factorialc -deprecation Factorial.java[19P Factorialc -deprecation Factorial.java
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ javac -deprecation Factorial.java[15Pcat Factorial.java[4Pjava Factorial

To compute n!, enter n: 5

5! = 120

]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ 2 java Factorial

To compute n!, enter n: 2

2! = 2

]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ java Factorial

To compute n!, enter n: 4 3

3! = 6

]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ yay   yay!
WARNING:root:could not open file '/etc/apt/sources.list'

yay!: command not found
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ exit

Script done on 2021-03-02 17:24:28-0500
