Script started on 2021-03-12 12:35:48-0500
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ gnatm     cat s split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date: 03/12/21
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;
   Str : String := "hi my name is mike";

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure Split (Astring : in String; Pos : in Integer; Part1, Part2 : in out String) is 
   begin
      Move(Astring(Astring'First .. Pos-1), Part1);    -- stores first half into Part1
      Move(Astring(Pos .. Astring'Last), Part2);   -- stores first half into Part1
   end Split;
     


begin                                           -- Prompt for input
       
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);
   
   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ gnatme ake split.ada  db
gnatmake: "split" up to date.
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is                                         
 and the second part is hello                                   
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 4
The first part is hel                                     
 and the second part is lo                                      
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;jr232@gold12: ~/Desktop/cs214/labs/06/06[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/06/06[00m$ exit

Script done on 2021-03-12 12:36:41-0500
