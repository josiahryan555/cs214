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

