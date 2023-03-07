-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/01/21
--------------------------------------------------------------

package name_package is

type Name is private;
procedure Init(Nm: out Name; First, Middle, Last : in String);
function getFirst( Nm: in Name) return String;
function getMiddle( Nm: in Name) return String;
function getLast( Nm: in Name) return String;
function getFullName( Nm: in Name) return String;
procedure Put(Nm: in Name);

NAME_SIZE : constant Positive := 8;

private


type Name is 
      record
         myFirst,
         myMiddle,
         MyLast : String(1..NAME_SIZE);
      end record;

end name_package;