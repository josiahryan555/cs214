Script started on 2021-02-22 13:22:50-0500
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ cat grade_calc.adb
--grade_calc.adb converts a grade out of 100 into its corresponding letter grade
--
--By: Josiah Ryan
--Date: feb/22/21
--
--Input: grade, an int
-- PRE: 0 < grade < 100
--Output: the letter grade corresponding to the number grade given
-----------------------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure Grade_Calc is 
   
   Grade : Integer;
  -- IntRead : Natural;
  -- Grade : Integer(0..100)
     
   function GradeCalc(Grade : Integer) return Character is
   begin
      case (Grade / 10) is 
	 when 10 | 9 => return 'A';
	 when 8 => return 'B';
	 when 7 => return 'C';
	 when 6 => return 'D';
	 when others => return 'F';
      end case;
     end GradeCalc;
begin
   Put("Enter your grade out of 100: ");
   Get(Grade);
   Put(GradeCalc(Grade) );
   New_Line;
end Grade_Calc;
       
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ gnatmake grade_calc.adb
gnatmake: "grade_calc" up to date.
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 100
A
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 90
A
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 89
B
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 70
C
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 5 67
D
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ ./grade_calc
Enter your grade out of 100: 34
F
]0;jr232@goldvm10: ~/Desktop/cs214/projects/03[01;32mjr232@goldvm10[00m:[01;34m~/Desktop/cs214/projects/03[00m$ exit

Script done on 2021-02-22 13:24:22-0500
