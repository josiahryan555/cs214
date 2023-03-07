-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:  Josiah Ryan
-- Date:          04/14/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;


package body Flying_Bird_Package is

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Flying_Bird_Type.                   -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Flying_Bird_Type) return String is
      begin
         return "flew by";
      end Movement;

end Flying_Bird_Package;

