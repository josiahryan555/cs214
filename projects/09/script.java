Script started on 2021-04-09 13:45:10-0400
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ cat Temperature.java
/* Temperature.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Josiah Ryan
 * Date:    04/04/21
 ************************************************************/

import java.lang.*;
import java.util.*;  

// the Name class appears outside of the rest of the program
class Temperature {


  /*******************************************************************************
   * Temperature object constructor with initialization  
   * Para@ temp (double), step (double), type (char)
   ********************************************************************************/
  public Temperature(final Double temp, final Double step, final char type) {
    myStep = step;
    myType = type;
    if (validTemp(temp, type) == true) {
      myTemp = temp;
    } else {
      if (type == 'f' || type == 'F') {
        myTemp = -459.67;
        System.out.print("invalid temperature, temp object set to -459.67 Fahrenheit");
      } else if (type == 'c' || type == 'C') {
        myTemp = -273.15;
        System.out.print("invalid temperature, temp object set to -273.15 Celcius");
      } else {
        myType = 'k';    //sets temperture type to kelvin in the case that it isn't already kelvin (type wasn't 'c','C','f','F','k','K')
        myTemp = 0.0;
        System.out.print("invalid temperature, temp object set to 0 Kelvin");
      }
      }

  }
 
  // extractor for temperature of the temperature object
  public final Double getTemp() {
      return myTemp;
  }

    // extractor for step of the temperature object
  public final Double getStep() {
      return myStep;
  }

  // extractor for type of the temperature object
  public final char getType() {
      return java.lang.Character.toLowerCase(myType);  //allows for comparison between temperatures defined using captial and lowercase letters
  }
  
  // mutator for myStep
  // Returns the new myStep value
  public final double setStep(Double step) {
    myStep = step;
    return myStep;  
  }

  // getFahrenheit()  returns the temperature converted to Fahrenheit 
  public final Double getFahrenheit() {
    if (myType == 'f' || myType == 'F') { // Fahreheit to Fahreheit
      return myTemp;
    }
    else if (myType == 'c' || myType == 'C') { // Celsius to Fahreheit 
      return (myTemp * 9/5) +32.0;
    }
    else { // Kelvin to Fahreheit 
      return (myTemp -273.15 )* 9.0/5.0 +32.0; 
    }
  }

  // getCelsius()     returns the temperature converted to Celsius
  public final Double getCelsius() {
    if (myType == 'f' || myType == 'F') { // Fahreheit to Celsius
      return (myTemp -32.0) * 5/9;
    }
    else if (myType == 'c' || myType == 'C') { // Celsius to Celsius
      return myTemp;
    }
    else { // Kelvin to Celsius
      return  myTemp -273.15;
    }
  }

  // getKelvin()    returns the temperature converted to Kelvin
  public final Double getKelvin() {
    if (myType == 'f' || myType == 'F') { // Fahreheit to Kelvin
      return (myTemp -32.0) * 5.0/9.0 + 273.15;
    }
    else if (myType == 'c' || myType == 'C') { // Celsius to Kelvin
      return myTemp +273.15;
    }
    else { // Kelvin to Kelvin
      return  myTemp;
    }
  }
   /******************************************************************************************
   * input()    returns a copy of this temperature object with the user inputed temp and type
   * Para@      newTemp (Double), tempType (char)
   * Returns    a copy of this temperature object with the user inputed temp and type
   ********************************************************************************************/
  public final Temperature input(Scanner scan) {
    double newTemp = scan.nextDouble();
    char newType = scan.next().charAt(0);

    if (validTemp(newTemp, newType)) {
      return new Temperature(newTemp, myStep, newType);
    } else {
      System.out.println("Invalid arguments passed to 'setTemp'.  Temperature object is unchanged.");
      return this;
    }
  }

  // output() prints the temperature in format 'Temperature:  100f'
  public final void output() {
    System.out.printf("Temperature:  %.3f f %.3f c %.3f k\n", getFahrenheit(), getCelsius(), getKelvin());
    
  }

  /**************************************************************************************
   * raise()  raises myTemp by the passed value 'change' and returns the modified myTemp
   * Para@    change (double)
   * Returns  the modified myTemp value
   **************************************************************************************/
  public final Double raise(double change) {
    myTemp += change;
    return myTemp;
  }

  /****************************************************************************************************************************
   * lower()  lowers myTemp by the passed value 'change' and returns the modified myTemp, as long as the new temp > absolute 0
   * Para@    change (double)
   * Returns  the modified myTemp value (or 0.0 if the temperature change wouldn't have droped myTemp below absolute 0)
   ******************************************************************************************************************************/
  public final Double lower(double change) {
    if(validTemp(myTemp - change, myType)) {
      myTemp -= change;
      return myTemp;
    } else {
      System.out.println("Temperature change denied.  Temperature change specified caused object temperature to drop below absolute zero.");
      return 0.0;
    }
  }


  /**************************************************************************************
   * validTemp()  checks the passed temp and type values and returns true if the temp is valid (> absolute 0)
   * Para@        newTemp (Double), tempType (char)
   * Returns      true if passed temperature is valid (> absolute 0)
   **************************************************************************************/
  public final Boolean validTemp(Double newTemp, char tempType) {
    if (tempType == 'f' || tempType == 'F') {
      if (newTemp < -459.67) {
        return false;
      } else {
        return true;
      }
    } else if (tempType == 'k' || tempType == 'K') {
      if (newTemp < 0) {
        return false;
      } else { 
        return true;
      }
    } else if (tempType == 'c' || tempType == 'C') {
      if (newTemp < -273.15) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  /**************************************************************************************
   * equals()  checks if passed temperature object is equal to (both myType and myTemp)
   * Para@     temp2 (Temperature)
   * Returns   true (if the passed Temperature object is equal to self) false (otherwise)
   **************************************************************************************/
  public final Boolean equals(Temperature temp2) {
    if(temp2.getTemp().equals(myTemp) && temp2.getType() == myType) {
      return true;
    } else {
      return false;
    }
  }

  /****************************************************************************************************************
   * lessThan() checks if this temperature object's temp is less than the passed temperature object's  
   * Para@      temp2 (Temperature)
   * Returns    true (if this object's temperature is less than the passed Temperature object's) false (otherwise)
   *****************************************************************************************************************/
  public final Boolean lessThan(Temperature temp2) {
    if(getCelsius() < temp2.getCelsius()) {
      return true;
    } else {
      return false;
    }
  }

  private Double myTemp, myStep;  // private instance variables
  private char myType;
}
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ cat TemperatureTester.java
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

 ]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ java Tm em        make
make: Nothing to be done for 'TemperatureTester'.
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ java Temperature. Tester
Enter the base temp of form '100.9 f' >  0.0 k

Enter the limit temp of form '100.9 f' >  100.0 C

Enter the step temp  >5.52

Temperature:  -459.670 f -273.150 c 0.000 k
Temperature:  -449.734 f -267.630 c 5.520 k
Temperature:  -439.798 f -262.110 c 11.040 k
Temperature:  -429.862 f -256.590 c 16.560 k
Temperature:  -419.926 f -251.070 c 22.080 k
Temperature:  -409.990 f -245.550 c 27.600 k
Temperature:  -400.054 f -240.030 c 33.120 k
Temperature:  -390.118 f -234.510 c 38.640 k
Temperature:  -380.182 f -228.990 c 44.160 k
Temperature:  -370.246 f -223.470 c 49.680 k
Temperature:  -360.310 f -217.950 c 55.200 k
Temperature:  -350.374 f -212.430 c 60.720 k
Temperature:  -340.438 f -206.910 c 66.240 k
Temperature:  -330.502 f -201.390 c 71.760 k
Temperature:  -320.566 f -195.870 c 77.280 k
Temperature:  -310.630 f -190.350 c 82.800 k
Temperature:  -300.694 f -184.830 c 88.320 k
Temperature:  -290.758 f -179.310 c 93.840 k
Temperature:  -280.822 f -173.790 c 99.360 k
Temperature:  -270.886 f -168.270 c 104.880 k
Temperature:  -260.950 f -162.750 c 110.400 k
Temperature:  -251.014 f -157.230 c 115.920 k
Temperature:  -241.078 f -151.710 c 121.440 k
Temperature:  -231.142 f -146.190 c 126.960 k
Temperature:  -221.206 f -140.670 c 132.480 k
Temperature:  -211.270 f -135.150 c 138.000 k
Temperature:  -201.334 f -129.630 c 143.520 k
Temperature:  -191.398 f -124.110 c 149.040 k
Temperature:  -181.462 f -118.590 c 154.560 k
Temperature:  -171.526 f -113.070 c 160.080 k
Temperature:  -161.590 f -107.550 c 165.600 k
Temperature:  -151.654 f -102.030 c 171.120 k
Temperature:  -141.718 f -96.510 c 176.640 k
Temperature:  -131.782 f -90.990 c 182.160 k
Temperature:  -121.846 f -85.470 c 187.680 k
Temperature:  -111.910 f -79.950 c 193.200 k
Temperature:  -101.974 f -74.430 c 198.720 k
Temperature:  -92.038 f -68.910 c 204.240 k
Temperature:  -82.102 f -63.390 c 209.760 k
Temperature:  -72.166 f -57.870 c 215.280 k
Temperature:  -62.230 f -52.350 c 220.800 k
Temperature:  -52.294 f -46.830 c 226.320 k
Temperature:  -42.358 f -41.310 c 231.840 k
Temperature:  -32.422 f -35.790 c 237.360 k
Temperature:  -22.486 f -30.270 c 242.880 k
Temperature:  -12.550 f -24.750 c 248.400 k
Temperature:  -2.614 f -19.230 c 253.920 k
Temperature:  7.322 f -13.710 c 259.440 k
Temperature:  17.258 f -8.190 c 264.960 k
Temperature:  27.194 f -2.670 c 270.480 k
Temperature:  37.130 f 2.850 c 276.000 k
Temperature:  47.066 f 8.370 c 281.520 k
Temperature:  57.002 f 13.890 c 287.040 k
Temperature:  66.938 f 19.410 c 292.560 k
Temperature:  76.874 f 24.930 c 298.080 k
Temperature:  86.810 f 30.450 c 303.600 k
Temperature:  96.746 f 35.970 c 309.120 k
Temperature:  106.682 f 41.490 c 314.640 k
Temperature:  116.618 f 47.010 c 320.160 k
Temperature:  126.554 f 52.530 c 325.680 k
Temperature:  136.490 f 58.050 c 331.200 k
Temperature:  146.426 f 63.570 c 336.720 k
Temperature:  156.362 f 69.090 c 342.240 k
Temperature:  166.298 f 74.610 c 347.760 k
Temperature:  176.234 f 80.130 c 353.280 k
Temperature:  186.170 f 85.650 c 358.800 k
Temperature:  196.106 f 91.170 c 364.320 k
Temperature:  206.042 f 96.690 c 369.840 k
Temperature:  215.978 f 102.210 c 375.360 k
Temperature:  206.042 f 96.690 c 369.840 k
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ java TemperatureTester
Enter the base temp of form '100.9 f' >  100.9 k

Enter the limit temp of form '100.9 f' >  0.0 k

Enter the step temp  >23.4

Temperature:  -278.050 f -172.250 c 100.900 k
Temperature:  -320.170 f -195.650 c 77.500 k
Temperature:  -362.290 f -219.050 c 54.100 k
Temperature:  -404.410 f -242.450 c 30.700 k
Temperature:  -446.530 f -265.850 c 7.300 k
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ java TemperatureTester
Enter the base temp of form '100.9 f' >  100.0 k

Enter the limit temp of form '100.9 f' >  0.0 k

Enter the step temp  >10.0

Temperature:  -279.670 f -173.150 c 100.000 k
Temperature:  -297.670 f -183.150 c 90.000 k
Temperature:  -315.670 f -193.150 c 80.000 k
Temperature:  -333.670 f -203.150 c 70.000 k
Temperature:  -351.670 f -213.150 c 60.000 k
Temperature:  -369.670 f -223.150 c 50.000 k
Temperature:  -387.670 f -233.150 c 40.000 k
Temperature:  -405.670 f -243.150 c 30.000 k
Temperature:  -423.670 f -253.150 c 20.000 k
Temperature:  -441.670 f -263.150 c 10.000 k
Temperature:  -459.670 f -273.150 c 0.000 k
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ java TemperatureTester
Enter the base temp of form '100.9 f' >  10.3 c

Enter the limit temp of form '100.9 f' >  100.6 f

Enter the step temp  >8.2

Temperature:  50.540 f 10.300 c 283.450 k
Temperature:  65.300 f 18.500 c 291.650 k
Temperature:  80.060 f 26.700 c 299.850 k
Temperature:  94.820 f 34.900 c 308.050 k
Temperature:  109.580 f 43.100 c 316.250 k
Temperature:  94.820 f 34.900 c 308.050 k
]0;jr232@gold12: ~/Desktop/cs214/projects/09/java[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/projects/09/java[00m$ exit

Script done on 2021-04-09 13:47:11-0400
