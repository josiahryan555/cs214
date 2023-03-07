/* TemperatureTester.java is a 'driver' to test class Temperature.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Josiah Ryan
 * Date: 04/04/21
 ************************************************************/

import java.util.*;  

public class TemperatureTester  
{
  public static void main(String[] args)
  {
    Scanner scan = new Scanner(System.in);
    Temperature base = new Temperature(0.0, 0.0, 'k');
    Temperature limit = new Temperature(0.0, 0.0, 'k');
    System.out.print("Enter the base temp of form '100.9 f' >  ");
    base = base.input(scan);
    System.out.println();

    System.out.print("Enter the limit temp of form '100.9 f' >  ");
    limit = limit.input(scan);
    System.out.println();

    System.out.print("Enter the step temp  >");
    base.setStep( scan.nextDouble());
    System.out.println();

    base.output();
    while (base.lessThan(limit)) {
      base.raise(base.getStep());
      base.output();
    }
    while (limit.lessThan(base)) {
      base.lower(base.getStep());
      base.output();
      if (base.getKelvin() -base.getStep() < 0.0) { // prevents an error loop of trying to lower the temp below absolute 0
        break;
      }
    }
  }
}

 