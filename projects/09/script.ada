Script started on 2021-04-07 16:16:15-0400
]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ cat temp_package.ads
-- temp_package.ads declares the temp type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/05/21
--------------------------------------------------------------

package temp_package is

type Temp is private;
procedure Init(tp: out Temp; myTemp, myStep : in Float; myType : in Character);
function getTemp( tp: in Temp) return Float;
function getStep( tp: in Temp) return Float;
function getType( tp: in Temp) return Character;
function isValid( temp : in Float; scale : in Character) return Boolean;
procedure inputTemp( tp: in out Temp);
function getFahrenheit( tp: in Temp) return Temp;
function getCelsius( tp: in Temp) return Temp;
function getKelvin( tp: in Temp) return Temp;
procedure outputTemp(tp: in Temp);
function raiseTemp(tp: in out Temp; step : in Float) return Temp;
function lowerTemp(tp: in Temp; step : in Float) return Temp;
function equals(tp1, tp2: in Temp) return Boolean;
function lessThan(tp1, tp2: in out Temp) return Boolean;

private
type Temp is 
      record
         myTemp, myStep : Float;
         myType: Character;
      end record;

end temp_package;]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ te  cat temp_package.adb
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/05/21
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO; 
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
package body temp_package is

----------------------------------------------
  -- Init initializes a Temperature variable          
  -- Receive: tp, the Temperature variable;          
  --          myTemp, the Temperature;         
  --          myStep, the incrementing variable;      
  --          myType, the Temperature type.         
  -- Return: Tp, its fields set to myTemp, myStep, myType.     
  ----------------------------------------------
--
  procedure Init(tp: out Temp; myTemp, myStep : in Float; myType : in Character) is
  begin
    if isValid(myTemp, myType) then
      tp.myTemp := myTemp;
      tp.myStep := myStep;
      tp.myType := myType;
    else 
      tp.myTemp := 0.0;
      tp.myStep := myStep;
      tp.myType := 'k';
      Put_Line("passed temp and type are invalid.  Temperature object set to 0 k");
    end if;

  end Init;
--
  ----------------------------------------------
  -- getTemp(Temp) retrieves temp.myTemp        
  -- Receive: tp, a temp.                      
  -- PRE: tp has been initialized.            
  -- Return: Np.myTemp.                     
  ----------------------------------------------
  function getTemp( tp: in Temp) return Float is
  begin
    return tp.MyTemp;
  end getTemp;

  ----------------------------------------------
  -- getStep(Temp) retrieves temp.myStep 
  -- Receive: tp, a temp.        
  -- PRE: tp has been initialized.
  -- Return: tp.myStep. 
  ----------------------------------------------
  function getStep( tp: in Temp) return Float is
  begin
     return tp.myStep;
  end getStep;

  ----------------------------------------------
  -- getType(Temp) retrieves temp.myType       
  -- Receive: tp, a Temp.                    
  -- PRE: tp has been initialized.            
  -- Return: tp.myType.                        
  ----------------------------------------------
  function getType( tp: in Temp) return Character is
  begin
     return tp.myType;
  end getType;

  ---------------------------------------------------------------------------------------------------------------
  -- getFahrenheit(Temp) returns a copy of the passed Temp object of type Fahrenheit with appropriate temperature      
  -- Receive: tp (Temp).                    
  -- PRE: tp has been initialized.            
  -- Return: Copy of passed Temp object converted to Fahreheit                        
  ----------------------------------------------------------------------------------------------------------------
  function getFahrenheit( tp: in Temp) return Temp is
      newTemp : temp;
  begin
    if tp.myType = 'f' or else tp.myType = 'F' then
      Init(newTemp, tp.myTemp, tp.myStep, 'f');
      return newTemp;

    elsif tp.myType = 'c' or else tp.myType = 'C' then
      Init(newTemp, tp.myTemp * 9.0/5.0 + 32.0, tp.myStep, 'f');
      return newTemp;

    else
      Init(newTemp, (tp.myTemp -273.15) * 9.0/5.0 +32.0, tp.myStep, 'f');
      return newTemp;
    end if;    
  end getFahrenheit;

  ----------------------------------------------------------------------------------------------------------
  -- getCelsius(Temp) returns a copy of the passed Temp object of type Celsius with appropriate temperature        
  -- Receive: tp (Temp).                    
  -- PRE: tp has been initialized.            
  -- Return: Copy of passed Temp object converted to Celsius                        
  -----------------------------------------------------------------------------------------------------------
  function getCelsius( tp: in Temp) return Temp is
    newTemp : temp;
  begin
    if tp.myType = 'f' or else tp.myType = 'F' then       -- if myType is Fahrenheit
      Init(newTemp, (tp.myTemp -32.0) * 5.0/9.0, tp.myStep, 'c');
      return newTemp;

    elsif tp.myType = 'c' or else tp.myType = 'C' then    -- if myType is Celsius
      Init(newTemp, tp.myTemp, tp.myStep, 'c');
      return newTemp;

    else                                                  -- if myType is Kelvin
      Init(newTemp, (tp.myTemp -273.15), tp.myStep, 'c');
      return newTemp;       
    end if;
  end getCelsius;

  -------------------------------------------------------------------------------------------------------
  -- getKelvin(Temp) returns a copy of the passed Temp object of type Kelvin with appropriate temperature    
  -- Receive: tp (Temp).                    
  -- PRE: tp has been initialized.            
  -- Return: Copy of passed Temp object converted to Kelvin                   
  --------------------------------------------------------------------------------------------------------
  function getKelvin( tp: in Temp) return Temp is
  newTemp : temp;
  begin
    if tp.myType = 'f' or else tp.myType = 'F' then       -- if myType is Fahrenheit
      Init(newTemp, (tp.myTemp -32.0 )* 5.0/9.0 +273.15, tp.myStep, 'k');
      return newTemp;

    elsif tp.myType = 'c' or else tp.myType = 'C' then    -- if myType is Celsius
      Init(newTemp, tp.myTemp + 273.15, tp.myStep, 'k');
      return newTemp;

    else                                                  -- if myType is Kelvin
      Init(newTemp, tp.myTemp, tp.myStep, 'k');
      return newTemp;           
    end if;
  end getKelvin;

  ---------------------------------------------------------------------------------------------------
  -- raiseTemp(Temp, Float) returns a copy of the passed Temp object raised step degrees  
  -- Receive: tp (Temp), step (Float).                    
  -- PRE: tp has been initialized.   
  -- Returns: a copy of the passed Temp object raised step degrees                               
  ----------------------------------------------------------------------------------------
  function raiseTemp(tp: in out Temp; step : in Float) return Temp is
    newTemp : temp;
  begin
    Init(newTemp, tp.myTemp + step, tp.myStep, tp.myType);
    return newTemp;
  end raiseTemp;

  --------------------------------------------------------------------------------------------------------------------------
  -- lowerTemp(Temp, Float) returns a copy of the passed Temp object raised step degrees (if new temp is valid) 
  -- Receive: tp (Temp), step (Float).                    
  -- PRE: tp has been initialized.     
  -- Returns: a copy of the passed Temp object raised step degrees  (if the new temp is valid (is not below absolute 0)                            
  ---------------------------------------------------------------------------------------------------------------------------
  function lowerTemp(tp: in Temp; step : in Float) return Temp is
    newTemp : temp;
    begin
      if isValid(tp.myTemp -step, tp.myType) then
        Init(newTemp, tp.myTemp - step, tp.myStep, tp.myType);
        return newTemp;
      else 
        Put_Line("lowerTemp() call would have dropped passed temp object below absolute zero; temp object set to 0k (absolute zero).");
        Init(newTemp, 0.0, tp.myStep, 'k');
        return newTemp;
      end if;
    end lowerTemp;

  --------------------------------------------------------------------------------------------------------------------------
  -- equals(Temp, Temp) returns true if both Temp object's myTemp fields and myType fields are identicle
  -- Receive: tp1 (Temp), tp2 (Temp).                    
  -- PRE: both tp1 and tp2 have been initialized.     
  -- Returns returns true if temp object's myTemp fields and myType fields are identicle and false if not
  ---------------------------------------------------------------------------------------------------------------------------
  function equals(tp1, tp2: in Temp) return Boolean is
  begin
    if tp1.myType = tp2.myType and then tp1.myTemp = tp2.myTemp then
      return true;
    else
      return false;
    end if;
  end equals;

  --------------------------------------------------------------------------------------------------------------------------
  -- lessThan(Temp, Temp) returns true if temp1's temperature is less than temp2's
  -- Receive: tp1 (Temp), tp2 (Temp).                    
  -- PRE: both tp1 and tp2 have been initialized.     
  -- Returns returns true if temp1's temperature is less than temp2's and false if not
  ---------------------------------------------------------------------------------------------------------------------------
  function lessThan(tp1, tp2: in out Temp) return Boolean is
  tp1Celsius : Temp := getCelsius(tp1);
  tp2Celsius : Temp := getCelsius(tp2);  
  begin
    if tp1Celsius.myTemp <  tp2Celsius.myTemp then
      return true;
    else
      return false;
    end if;
  end lessThan;

  -----------------------------------------------------------------------------------------------------------
  -- isValid(Temp, Float) retrieves checks if the passed temperature and type is valid (above absolute zero)    
  -- Receive: Temp (Float), type (character)
  -- PRE: type is 'c', 'C', 'k', 'K', 'f', or 'F'           
  -- Return:  Boolean (true if teperature is valid) (false other wise)                       
  -----------------------------------------------------------------------------------------------------------
  function isValid( temp : in Float; scale : in Character) return Boolean is
  begin 
    case scale is 
      when 'c'|'C' => 
        if(temp < -273.15) then 
          return false; 
        else 
          return true;    
        end if;
      when 'k'|'K' => 
        if(temp < 0.0) then 
          return false;
        else 
          return true; 
        end if;
      when 'f'|'F' => 
        if(temp < -459.67) then 
          return false; 
        else 
          return true; 
        end if;
      when others => return false;
    end case;
  end isValid;

  ----------------------------------------------------------------------------------------------------------------------
  -- inputTemp(Temp) gets a single line input from user ('98.6f') that sets the temperature object to the specified value   
  -- Receive: tp (Temp)
  -- PRE: temp object is initialized                               
  -----------------------------------------------------------------------------------------------------------
  procedure inputTemp( tp: in out Temp) is
    tempType : Character;
    temperature : Float;
  begin
    Put_Line("Enter new Temperature in the form '-98.6f' or '1C'");
    Put("New temp >");

    Get(temperature); -- gets user passed Float and Char
    Get(tempType);
    -- check for the passed temperature value's validity
    if isValid(temperature, tempType) then 
      tp.myTemp := temperature;
      tp.myType := tempType;
    else 
      Put_Line("Passed temperature and type were invalid, object not changed");
    end if;
  end inputTemp;

  ---------------------------------------------------------------------------------------
  -- outputTemp(Temp) prints temp's temperature in format '1.000 f'    
  -- Receive: tp (Temp).                    
  -- PRE: tp has been initialized.                                 
  ----------------------------------------------------------------------------------------
  procedure outputTemp(tp: in Temp) is
  begin
    Put(tp.myTemp, 3, 3, 0);
    Put(" ");
    Put(tp.myType);
    Put("  ");
  end outputTemp;


end temp_package;]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ cat temp_tester.adb
-- temp_tester.adb "test-drives" the Temp type.
--
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Josiah Ryan 
-- Date:         04/05/21
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO; 
with temp_package; use temp_package;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure temp_tester is
aTemp : temp_Package.temp;
aTemp2 : temp_Package.temp;
aTemp3 : temp_Package.temp;
increment : Float;
begin
   Init(aTemp, 100.0, 10.0, 'f');
   Init(aTemp2, 1000.0, 10.0, 'k');
   Init(aTemp3, 90.0, 10.0, 'k');

   pragma Assert( getTemp(aTemp) = 100.0, "getTemp() failed");
   pragma Assert( getStep(aTemp) = 10.0, "getStep() failed");
   pragma Assert( getType(aTemp) = 'f', "getType() failed");

   pragma Assert( equals(aTemp, aTemp2) = false, "equals(aTemp, aTemp2) incorrectly returned true");

   Put_Line("");

   inputTemp(aTemp);
   Put_Line("");

   Put_Line("Enter limit temperature");
   inputTemp(aTemp2);
   Put("Enter increment value  >");
   Get(increment);
   -- the if statment determines which temperature is smaller, and creates a while loop accordingly
   if lessThan(aTemp, aTemp2) then 
      while lessThan(aTemp, aTemp2) or else equals(aTemp2, aTemp) loop  -- aTemp is lower than aTemp2, so aTemp will be incremented by increment
         outputTemp(getFahrenheit(aTemp)); 
         outputTemp(getCelsius(aTemp));
         outputTemp(getKelvin(aTemp));
         Put_Line("");

         exit when equals(aTemp2, aTemp);   --placed after output statements so that if aTemp = ATemp2, the equal case will be outputted
         aTemp := lowerTemp(aTemp, increment * (-1.0)); -- calls lower and * -1 so temperature's validity is checked, it raises the temp if increment is positive and lowers if increment is negative.
      end loop;
   else 
      while lessThan(aTemp2, aTemp) or else equals(aTemp2, aTemp) loop -- aTemp is higher than aTemp2, so aTemp will be decremented by increment
         outputTemp(getFahrenheit(aTemp)); 
         outputTemp(getCelsius(aTemp));
         outputTemp(getKelvin(aTemp));
         Put_Line("");

         exit when equals(aTemp2, aTemp);   --placed after output statements so that if aTemp = ATemp2, the equal case will be outputted
         aTemp:= lowerTemp(aTemp, increment); 
      
      end loop;
   end if;

   Put("All tests passed!"); New_line;
end temp_tester;

]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ make temp_tester.ad   
make: 'temp_tester' is up to date.
]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ ./temp_tester

Enter new Temperature in the form '-98.6f' or '1C'
New temp >100k

Enter limit temperature
Enter new Temperature in the form '-98.6f' or '1C'
New temp >0k
Enter increment value  >5
-279.670 f  -173.150 c  100.000 k  
-288.670 f  -178.150 c   95.000 k  
-297.670 f  -183.150 c   90.000 k  
-306.670 f  -188.150 c   85.000 k  
-315.670 f  -193.150 c   80.000 k  
-324.670 f  -198.150 c   75.000 k  
-333.670 f  -203.150 c   70.000 k  
-342.670 f  -208.150 c   65.000 k  
-351.670 f  -213.150 c   60.000 k  
-360.670 f  -218.150 c   55.000 k  
-369.670 f  -223.150 c   50.000 k  
-378.670 f  -228.150 c   45.000 k  
-387.670 f  -233.150 c   40.000 k  
-396.670 f  -238.150 c   35.000 k  
-405.670 f  -243.150 c   30.000 k  
-414.670 f  -248.150 c   25.000 k  
-423.670 f  -253.150 c   20.000 k  
-432.670 f  -258.150 c   15.000 k  
-441.670 f  -263.150 c   10.000 k  
-450.670 f  -268.150 c    5.000 k  
-459.670 f  -273.150 c    0.000 k  
All tests passed!
]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ ./temp_tester

Enter new Temperature in the form '-98.6f' or '1C'
New temp >100f

Enter limit temperature
Enter new Temperature in the form '-98.6f' or '1C'
New temp >-30c
Enter increment value  >13
100.000 f   37.778 c  310.928 k  
 87.000 f   30.556 c  303.706 k  
 74.000 f   23.333 c  296.483 k  
 61.000 f   16.111 c  289.261 k  
 48.000 f    8.889 c  282.039 k  
 35.000 f    1.667 c  274.817 k  
 22.000 f   -5.556 c  267.594 k  
  9.000 f  -12.778 c  260.372 k  
 -4.000 f  -20.000 c  253.150 k  
-17.000 f  -27.222 c  245.928 k  
All tests passed!
]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ ./temp_tester

Enter new Temperature in the form '-98.6f' or '1C'
New temp >-40f

Enter limit temperature
Enter new Temperature in the form '-98.6f' or '1C'
New temp >1000k
Enter increment value  >100
-40.000 f  -40.000 c  233.150 k  
 60.000 f   15.556 c  288.706 k  
160.000 f   71.111 c  344.261 k  
260.000 f  126.667 c  399.817 k  
360.000 f  182.222 c  455.372 k  
460.000 f  237.778 c  510.928 k  
560.000 f  293.333 c  566.483 k  
660.000 f  348.889 c  622.039 k  
760.000 f  404.444 c  677.594 k  
860.000 f  460.000 c  733.150 k  
960.000 f  515.556 c  788.706 k  
1060.000 f  571.111 c  844.261 k  
1160.000 f  626.667 c  899.817 k  
1260.000 f  682.222 c  955.372 k  
All tests passed!
]0;jr232@maroon11: ~/Desktop/cs214/projects/09/ada[01;32mjr232@maroon11[00m:[01;34m~/Desktop/cs214/projects/09/ada[00m$ exit

Script done on 2021-04-07 16:18:33-0400
