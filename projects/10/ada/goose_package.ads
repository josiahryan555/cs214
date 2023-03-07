-- goose_package.ads gives Goose-related declarations,
--  and derives Goose from Flying_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Goose_Package is
  subtype Parent is Flying_Bird_Package.Flying_Bird_Type;
  type Goose_Type is new Parent with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function  Call(A_Goose : in Goose_Type) return String;


 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
  function  Type_Name(A_Goose : in Goose_Type) return String;
  
  private

     type Goose_Type is new Parent with
          record
            null;
          end record;


end Goose_Package;
