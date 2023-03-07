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


end temp_package;