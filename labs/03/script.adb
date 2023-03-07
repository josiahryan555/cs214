Script started on 2021-02-19 12:44:10-0500
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;
   
   
   --Receive: year, a string.
   --Precondition: year is one of {freshman, sophomore, junior, senior}.
   --Return: The integer code corresponding to year (1, 2, 3 or 4).
   function yearCode(Year : string) return Integer is 
      begin 
	 if Year = "freshman " then 
	    return 1;
	 elsif Year = "sophomore" then
	    return 2;
	 elsif Year = "junior   " then
	    return 3;
	 elsif Year = "senior   " then
	    return 4;
	 end if;
	   return 0;
      end YearCode;
begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ cat year_codes.adbemacs year_does.adb~ &[1P &[Kls[Kcd /home/jr232/Desktop/cs214/labs/03ls[Kcd 03[3Pls[31@cd /home/jr232/Desktop/cs214/labsls[Kcd 03[3Plscd /home/jr232/Desktop/cs214/labs/03ls[Kemacs year_does.adb &[1@~ &[4Pcat year_codes.adb[Kcat year_codes.adbemacs year_does.adb~ &[4Pcat year_codes.adb[K./year_codes
Enter your academic year: j fresn hman
          1
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ./year_codes
Enter your academic year: soh phomore
          2
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ./year_codes
Enter your academic year: junior
          3
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ./year_codes
Enter your academic year: senior
          4
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ ./year_codes
Enter your academic year: tim the mighty bean
          0
]0;jr232@maroon28: ~/Desktop/cs214/labs/03[01;32mjr232@maroon28[00m:[01;34m~/Desktop/cs214/labs/03[00m$ exit

Script done on 2021-02-19 12:45:08-0500
