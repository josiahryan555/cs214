-- waling_bird_package.adb gives a Bird sub class definition
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:  Josiah Ryan
-- Date:          04/14/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;


package body Walking_Bird_Package is

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Walking_Bird_Type.                   -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Walking_Bird_Type) return String is
      begin
         return "walked by";
      end Movement;

end Walking_Bird_Package;