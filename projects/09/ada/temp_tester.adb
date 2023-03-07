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

