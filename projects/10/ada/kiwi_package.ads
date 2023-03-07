-- Kiwi_package.ads gives Kiwi-related declarations,
--  and derives Kiwi from Walking_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/15/21
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;
with Walking_Bird_Package; use Walking_Bird_Package;

package Kiwi_Package is
  subtype Parent is Walking_Bird_Package.Walking_Bird_Type;
  type Kiwi_Type is new Parent with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

  function  Type_Name(A_Kiwi : in Kiwi_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
  function  Call(A_Kiwi : in Kiwi_Type) return String;
    

  private

  type Kiwi_Type is new Parent with
          record
            null;
          end record;

end Kiwi_Package;