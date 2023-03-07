Script started on 2021-02-05 12:54:43-0500
]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ cat circle_area.abd
-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date: Feb/05/21
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is -- declares a function 
      PI : constant := 3.1415927;  --sets a constant for pi
   begin  -- starts the execution part of the function
      return PI * r ** 2; --calculates and returns area
   end circleArea; --end of function

begin    -- start of 'main'
   New_Line; -- adds a line of white space
   Put_Line("To compute the area of a circle,"); -- prints that string, and goes to a new line
   Put("enter its radius: "); -- prints that string, but doesnt go to a new line
   Get(radius);  -- grabs the user inputed value and stores it in 'radius'

   area := circleArea(radius); -- calculates area and stores it in area

   New_Line;  -- adds a line of white space
   Put("The circle's area is "); -- prints line
   Put(area);  -- prints area
   New_Line; New_Line; -- adds 2 lines of white space

   Put("The circle's area is "); -- prints that string
   Put(area, 1, 15, 0); -- outputs the area formated to have at least one digit before the decimal place, and 15 after it 
   New_Line; New_Line; -- adds 2 lines of white space
end circle_area; -- end of 'main'
]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ gnatmake circle_area.abd    .abd
x86_64-linux-gnu-gcc-7 -c -x ada circle_area.abd
circle_area.abd:15:11: warning: file name does not match unit name, should be "circle_area.adb"
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ gnatmake circle_area.abd
gnatmake: "circle_area" up to date.
]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;jr232@gold14: ~/Desktop/CS214/labs/01[01;32mjr232@gold14[00m:[01;34m~/Desktop/CS214/labs/01[00m$ exit

Script done on 2021-02-05 12:57:06-0500
