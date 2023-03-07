Script started on 2021-03-22 15:54:47-0400
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ cat array_processing.adb
-- array_processing.adb is a class that provides two methods: printArray and readArray
--
-- Completed by: Josiah Ryan
-- Date: 03/22/21
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure array_processing is

   size      : Natural;

   --------------------------------------------------------------------
   -- readArray prompts user for the values to store into the array
   -- Receive: 	an array 
   -- Does   :  Stores user inputed values into the array
      -----------------------------------------------------------------
   procedure readArray (size : in Integer)is 

   type Vector is array (1..size) of Float;    --declares type Vector that is of user inputed size
   anArray : Vector;
   item : float;


      --------------------------------------------------------------------
      -- printArray prints the array passed to it
      -- Receive: 	an array 
      -- Does   :  prints the array passed to it
      -----------------------------------------------------------------
      procedure printArray (anArray : Vector) is
      item : float;
      begin
         Put_Line("Your array");
         for I in anArray'First..anArray'Last loop
            item := anArray(I);
            Put(item, 1, 5, 0); --prints formated string
            Put_Line(" ");
         end loop;
      end printArray;

   --readArray()
   begin
      Put_Line("Enter Array values:");
      for I in anArray'First..anArray'Last loop
         Put("  >");
         Get(item);
         anArray(I) := item;
      end loop;
      printArray(anArray);
   end readArray;
     

--array_processing()
begin                                           -- Prompt for input
       
   Put_Line("Enter size of the Array:");
   Get(size);
   readArray(size);
   --printArray(anArray);
end array_processing;

]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ gnatmake array_processing
gnatmake: "array_processing" up to date.
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ ./array_processing
Enter size of the Array:
3
Enter Array values:
  >23
  >4.567
  >1
Your array
23.00000 
4.56700 
1.00000 
]0;jr232@goldvm12: ~/Desktop/cs214/projects/07[01;32mjr232@goldvm12[00m:[01;34m~/Desktop/cs214/projects/07[00m$ exit

Script done on 2021-03-22 15:55:51-0400
