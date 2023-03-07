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

