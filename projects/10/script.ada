Script started on 2021-04-15 16:21:26-0400
]0;jr232@goldvm04: ~/Desktop/cs214/projects/10/ada[01;32mjr232@goldvm04[00m:[01;34m~/Desktop/cs214/projects/10/ada[00m$ cat bird_package.ads bird_packag e.adb flying_bird_package.ads flying_bird_package.adb walkig ng_p bird  ) _package.ads w alking_bird_package.adb duck_package.ads duck_package.adb goose_package.ads goos e_package.adb owl_package.ads owl_pak ckage.adb pr enguin_package.ads penguin_packag e.adb kiwi_package.adb s kiwi_package.adb ostrich_package.ads ostrich_package.asd  db  birds.adb
-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

package Bird_Package is

   Type Bird_Type is abstract tagged private;
 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
procedure Init(A_Bird : out Bird_Type; Name : in String);


 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
    function  Name(A_Bird : in Bird_Type) return String;


 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
    function  Call(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
    function  Type_Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Flying_Bird_Type.            -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Bird_Type) return String is abstract;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class);
    
private

type Bird_Type is abstract
         tagged record
            My_Name : String(1..6);
          end record;

end Bird_Package;
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
procedure Init(A_Bird : out Bird_Type; Name : in String) is
   begin
    A_Bird.My_Name := Name;
   end Init;
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
function Name(A_Bird : in Bird_Type) return String is
   begin
    return A_Bird.My_Name;
   end Name;
-----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
 function Call(A_Bird : in Bird_Type) return String is
   begin
    return "Squawwwwwwk!";
   end Call;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
function Type_Name(A_Bird : in Bird_Type) return String is
   begin
    return "Bird";
   end Type_Name;

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: the birds movement                      -
 ----------------------------------------------------

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
procedure Put(A_Bird : in Bird_Type'Class) is
   begin
    Put( Name(A_Bird) );
    Put( ' ' );
    Put( Type_Name(A_Bird) );
    Put( " " );
    Put( movement(A_Bird) );
    Put( " and said " );
    Put( Call(A_Bird) );
   end Put;
end Bird_Package;

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
-- flying_bird_package.adb gives a Bird subclass definition
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
 -- Receive: A_Bird, a Flying_Bird_Type.            -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Flying_Bird_Type) return String is
      begin
         return "flew by";
      end Movement;

end Flying_Bird_Package;

-- walking_bird_package.ads gives a Bird subclass declaration
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/14/21
---------------------------------------------------

with Bird_Package; use Bird_Package;


package Walking_Bird_Package is

    type Walking_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- Determine type of a Bird's movement             -
 -- Receive: A_Bird, a Walking_Bird_Type.                   -
 -- Return: the birds movement                      -
 ----------------------------------------------------
   function Movement(A_Bird : in Walking_Bird_Type) return String;

  private

  type Walking_Bird_Type is new Bird_Type with
          record
            null;
          end record;

end Walking_Bird_Package;-- waling_bird_package.adb gives a Bird sub class definition
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

end Walking_Bird_Package;-- duck_package.ads gives Duck-related declarations,
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
-- duck_package.adb gives Duck-related definitions
--  by over-riding Flying_Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Duck : in Duck_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
function Type_Name(A_Duck : in Duck_Type) return String is
   begin
    return "Duck";
   end Type_Name;

end Duck_Package;
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
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

  function Call(A_Goose : in Goose_Type) return String is
    begin
     return "Honk!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
  function Type_Name(A_Goose : in Goose_Type) return String is
    begin
     return "Goose";
    end Type_Name;

end Goose_Package;
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
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
 function Call(A_Owl : in Owl_Type) return String is
   begin
    return "Who-hooo!";
   end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function Type_Name(A_Owl : in Owl_Type) return String is
   begin
    return "Owl";
   end Type_Name;
end Owl_Package;
-- Penguin_package.ads gives Penguin-related declarations,
--  and derives Penguin from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/15/21
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;
with Walking_Bird_Package; use Walking_Bird_Package;

package Penguin_Package is
  subtype Parent is Walking_Bird_Package.Walking_Bird_Type;
  type Penguin_Type is new Parent with private;

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

  function  Type_Name(A_Penguin : in Penguin_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
  function  Call(A_Penguin : in Penguin_Type) return String;
    

  private

  type Penguin_Type is new Parent with
          record
            null;
          end record;

end Penguin_Package;
-- Penguin_package.adb gives Penguin-related definitions
--  by over-riding walking Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/15/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())          -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Penguin : in Penguin_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Penguin (Over-rides Bird.Type_Name()) -
 -- Receive: A_Penguin, a Penguin_Type.                          -
 -- Return: "Penguin".                                        -
 -----------------------------------------------------------
function Type_Name(A_Penguin : in Penguin_Type) return String is
   begin
    return "Penguin";
   end Type_Name;

end Penguin_Package;
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

end Kiwi_Package;-- Kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/09/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Kiwi : in Kiwi_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
function Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
    return "Kiwi";
   end Type_Name;

end Kiwi_Package;
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

end Ostrich_Package;-- Ostrich_package.adb gives Ostrich-related definitions
--  by over-riding walking Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         04/15/21
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())          -
 -- Receive: A_Ostrich, a Ostrich_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Ostrich : in Ostrich_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Ostrich (Over-rides Bird.Type_Name()) -
 -- Receive: A_Ostrich, a Ostrich_Type.                          -
 -- Return: "Ostrich".                                        -
 -----------------------------------------------------------
function Type_Name(A_Ostrich : in Ostrich_Type) return String is
   begin
    return "Ostrich";
   end Type_Name;

end Ostrich_Package;
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Josiah Ryan
-- Date:         04/09/21
-----------------------------------------------------

with Bird_Package, 
      Flying_Bird_Package,
      Walking_Bird_Package,
      Penguin_Package,
      Kiwi_Package,
      Ostrich_Package,
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      Ada.Text_IO;
use Bird_Package,
      Flying_Bird_Package,
      Walking_Bird_Package,
      Penguin_Package,
      Kiwi_Package,
      Ostrich_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Ada.Text_IO;


procedure Birds is

 Bird1 : Duck_Type;       -- derived flying class 1
 Bird2 : Goose_Type;      -- derived flying class 2
 Bird3 : Owl_Type;        -- derived flying class 3

 Bird4 : Penguin_Type;        -- derived walking class 1
 Bird5 : Kiwi_Type;           -- derived walking class 2
 Bird6 : Ostrich_Type;        -- derived walking class 3

begin
   Put_Line("Welcome to the Bird Park!");
   Put_Line("");

   Init(Bird1, "Donald");
   Put(Bird1); New_Line;

   Init(Bird2, "Mother");
   Put(Bird2); New_Line;

   Init(Bird3, "Woodsy");
   Put(Bird3); New_Line;

   Init(Bird4, "Peter ");
   Put(Bird4); New_Line;

   Init(Bird5, "Kevin ");
   Put(Bird5); New_Line;

   Init(Bird6, "Oscar ");
   Put(Bird6); New_Line;

 New_Line;
end Birds;

]0;jr232@goldvm04: ~/Desktop/cs214/projects/10/ada[01;32mjr232@goldvm04[00m:[01;34m~/Desktop/cs214/projects/10/ada[00m$ [Kmake
make: 'birds' is up to date.
]0;jr232@goldvm04: ~/Desktop/cs214/projects/10/ada[01;32mjr232@goldvm04[00m:[01;34m~/Desktop/cs214/projects/10/ada[00m$ ./birds
Welcome to the Bird Park!

Donald Duck flew by and said Quack!
Mother Goose flew by and said Honk!
Woodsy Owl flew by and said Who-hooo!
Peter  Penguin walked by and said Quack!
Kevin  Kiwi walked by and said Quack!
Oscar  Ostrich walked by and said Quack!

]0;jr232@goldvm04: ~/Desktop/cs214/projects/10/ada[01;32mjr232@goldvm04[00m:[01;34m~/Desktop/cs214/projects/10/ada[00m$ exit

Script done on 2021-04-15 16:25:10-0400
