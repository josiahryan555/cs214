-- Ostrich_package.ads gives Ostrich-related declarations,
--  and derives Ostrich from Walking_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/15/21
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;
with Walking_Bird_Package; use Walking_Bird_Package;

package Ostrich_Package is
  subtype Parent is Walking_Bird_Package.Walking_Bird_Type;
  type Ostrich_Type is new Parent with private;

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Ostrich, a Ostrich_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

  function  Type_Name(A_Ostrich : in Ostrich_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
  function  Call(A_Ostrich : in Ostrich_Type) return String;
    

  private

  type Ostrich_Type is new Parent with
          record
            null;
          end record;

end Ostrich_Package;