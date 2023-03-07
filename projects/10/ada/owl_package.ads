-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Flying_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Owl_Package is
  subtype Parent is Flying_Bird_Package.Flying_Bird_Type;
  type Owl_Type is new Parent with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
function  Call(A_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function  Type_Name(A_Owl : in Owl_Type) return String;

  private

  type Owl_Type is new Parent with
          record
            null;
          end record;


end Owl_Package;
