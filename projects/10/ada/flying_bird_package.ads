-- flying_bird_package.ads gives a Bird subclass declaration
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/14/21
---------------------------------------------------

with Bird_Package; use Bird_Package;


package Flying_Bird_Package is

    type Flying_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Flying_Bird_Type.                   -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Flying_Bird_Type) return String;

  private

  type Flying_Bird_Type is new Bird_Type with
          record
            null;
          end record;

end Flying_Bird_Package;
