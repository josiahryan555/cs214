-- duck_package.ads gives Duck-related declarations,
--  and derives Duck from Flying_Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;
with Flying_Bird_Package; use Flying_Bird_Package;

package Duck_Package is
  subtype Parent is Flying_Bird_Package.Flying_Bird_Type;
  type Duck_Type is new Parent with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

  function  Type_Name(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
  function  Call(A_Duck : in Duck_Type) return String;
    

  private

  type Duck_Type is new Parent with
          record
            null;
          end record;

end Duck_Package;
