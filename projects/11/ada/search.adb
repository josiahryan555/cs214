-- Search.adb finds the index of the specified value (99) in ada linked lists.
-- 
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:  Josiah Ryan
-- Date:          04/16/21
-------------------------------------------------- 
 
with Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
use Ada.Text_IO, Ada.Integer_Text_IO, List_Package; 
 
procedure Search is 
                              -- define 3 lists 
  List1, List2, List3, list4 : List; 
 
begin 
  Init(List1);                -- initialize them 
  Init(List2); 
  Init(List3); 
 
  Append(99, List1);          -- 99, 88, 77, 66, 55 
  Append(88, List1);          -- Search is first 
  Append(77, List1); 
  Append(66, List1); 
  Append(55, List1); 
 
  Append(55, List2);          -- 55, 66, 77, 88, 99 
  Append(66, List2);          -- Search is last 
  Append(77, List2); 
  Append(88, List2); 
  Append(99, List2); 
 
  Append(55, List3);          -- 55, 77, 99, 88, 66 
  Append(77, List3);          -- Search is in the middle 
  Append(99, List3); 
  Append(88, List3); 
  Append(66, List3); 
 
  Put(List1); New_Line;       -- output the 4 lists 
  Put(List2); New_Line; 
  Put(list3); New_Line;
  Put(list4); New_Line; 
                              -- display their Searchima 
  Put("The index of value 99 in list 1 is ");  
  Put( Search(List1, 99) ); 
  New_Line; 
  Put("The index of value 99 in list 2 is "); 
  Put( Search(List2, 99) );
  New_Line; 
  Put("The index of value 99 in list 3 is ");
  Put( Search(List3, 99) );
  New_Line; 
  Put("The index of value 99 in list 4 is ");
  Put( Search(List4, 99) );
  New_Line; 
 
end Search; 

