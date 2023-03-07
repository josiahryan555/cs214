Script started on 2021-03-02 18:07:58-0500
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ s cat factorial.adb
-- factorial.adb takes an interger input n and returns n!
--
-- Input: n, an integer
-- Precondition: is an integer 
-- Output: n! (n * (n-1) * (n-2) * ... * 1)  -- if n is positive
--
-- Author: Josiah Ryan
-- Date:   3/2/21
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is

   N              : Integer := 0;
   N_Factorial, I : Integer := 1;
   
begin                                           -- Prompt for input
   Put("Enter an integer and you will recieve its factorial: ");
   Get(N);
   
   while I <= N  --calculates N!
   loop 
      N_Factorial := N_Factorial * I;
      I := I + 1;
   end loop; 
    Put(N); Put("! = "); Put(N_Factorial); Put_Line(""); --prints N!
end factorial;

]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ gnatmake factorial.adb
gnatmake: "factorial" up to date.
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ./factorial
Enter an integer and you will recieve its factorial: 5
          5! =         120
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ./factorial
Enter an integer and you will recieve its factorial: 4
          4! =          24
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ 
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ ./factorial
Enter an integer and you will recieve its factorial: 3
          3! =           6
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ yay!
WARNING:root:could not open file '/etc/apt/sources.list'

yay!: command not found
]0;jr232@goldvm20: ~/Desktop/cs214/projects/04[01;32mjr232@goldvm20[00m:[01;34m~/Desktop/cs214/projects/04[00m$ exit

Script done on 2021-03-02 18:08:50-0500
