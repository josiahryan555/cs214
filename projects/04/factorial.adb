-- factorial.adb takes an interger input n and returns n!
--
-- Input: n, an integer
-- Precondition: is an integer 
-- Output: n! (n * (n-1) * (n-2) * ... * 1)  -- if n is positive
--
-- Author: Josiah Ryan
-- Date:   3/2/21
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is

   N              : Integer := 0;
   N_Factorial, I : Integer := 1;
   
begin                                           -- Prompt for input
   Put("Enter an integer and you will recieve its factorial: ");
   Get(N);
   
   while I <= N  --calculates N!
   loop 
      N_Factorial := N_Factorial * I;
      I := I + 1;
   end loop; 
    Put(N); Put("! = "); Put(N_Factorial); Put_Line(""); --prints N!
end factorial;

