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

