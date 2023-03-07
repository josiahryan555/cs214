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
