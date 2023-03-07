Script started on 2021-03-18 13:15:36-0400
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date: 3/18/21
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

type Vector is array ( Positive range <>) of Float;

array0 : Vector := (0.0, 0.0);

array1 : Vector := (9.0, 8.0, 7.0, 6.0);

----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

function sum(A: Vector) return Float is 
   Total : Float := 0.0; 
   begin 
      --for I in A'Range 
      for I in A'First..A'Last
      loop 
         Total := Total + A(I); 
      end loop; 
      return Total; 
   end sum; 

---------------------------------------------------------------------
-- average() is a method that computes the average of the values 
-- in an array.
-- Receive: anArray, an array of doubles.
-- Return: the average of the values in anArray.
---------------------------------------------------------------------
function average(anArray : Vector) return Float is
   begin 
      if anArray'Length = 0 then 
         return 0.0;
      else 
         return sum(anArray)/Float(anArray'Length); --calculates and returns average
      end if;
   end average;


begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ ga natmake average.adb
x86_64-linux-gnu-gcc-7 -c average.adb
x86_64-linux-gnu-gnatbind-7 -x average.ali
x86_64-linux-gnu-gnatlink-7 average.ali
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;jr232@gold14: ~/Desktop/cs214/labs/07/07[01;32mjr232@gold14[00m:[01;34m~/Desktop/cs214/labs/07/07[00m$ exit

Script done on 2021-03-18 13:15:59-0400
