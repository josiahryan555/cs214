-- quadratic.adb recieves a quadratic equation and returns its roots
--
-- Input: a, b, c (numbers)
-- Precondition:  a, b, c of form ax^2 + bx + c  
-- Output: roots of 'ax^2 + bx + c'
--
-- Completed by: Josiah Ryan
-- Date: 03/17/21
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure quadratic is

   a, b, c, root1, root2     : Float;
   valid                     : Boolean; -- used to determine if getRoots had an error

   ------------------------------------------------
   -- getRoots() returns roots of given inputs          
   -- Receive: a, b, c of form ax^2 + bx + c     
   -- PRE: a != 0 , and b^2 - 4ac >= 0
   -- Passback: roots of the inputs when inputed into the above equation
   ------------------------------------------------
   procedure getRoots (a, b, c : in Float; root1, root2 : in out Float; valid : out Boolean) is 
   arg : Float := Float((b * b) - 4.0 * a * c);
   begin
      if a /= 0.0  then 
         if arg >= 0.0 then 
            root1 := (-b + Sqrt (arg)) / (2.0 * a);
            root2 := (-b - Sqrt (arg)) / (2.0 * a);
            valid := true;
         else
            Put_Line("***Error getRoots(): b^2 -4ac is negative!" );
            valid := false;
         end if;
      else
         Put_Line("***Error getRoots(): a is zero!");
         valid := false;
      end if;

   end getRoots;
     


begin                                           -- Prompt for input
       
   Put_Line("To get the roots of a quadratic equation, enter a, b, c of form ax^2 + bx + c:");
   Put("Enter a:");
   Get(a);
   Put("Enter b:");
   Get(b);
   Put("Enter c:");
   Get(c);

   getRoots(a, b, c, root1, root2, valid);

   if valid /= false then
      Put_Line("The roots are:");
      Put(root1); Put_Line("");
      Put(root2); Put_Line("");
   end if;

end quadratic;

