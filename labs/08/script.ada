Script started on 2021-03-26 13:26:54-0400
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ cat name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         3/26/21
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : Natural := 8;

  type Name is
    record
      MyFirst, MyMiddle, MyLast  : String( 1..NAME_SIZE );
    end record;
  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out Name; First, Middle, Last : in String) is
  begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end getFirst;


  function getMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end getMiddle;


  function getLast(TheName : in Name) return String is
   begin
      return TheName.MyLast;
   end getLast;


  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(TheName : in Name) return String is
   begin
      return TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast;
   end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  procedure Put(TheName : in Name) is
   begin
      Put_Line( TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast );
   end Put;


begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

  pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
  pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
  pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
  pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                   "getFullName() failed");

  Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ make   e ada
make: Nothing to be done for 'ada'.
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ make adacat name_tester.adbl[Ksscript script.rubyruby NameTester.rbscript script.rubyls[K[Kcat name_tester.adb[11Pmake ada[K./name_tester
John     Paul     Jones   

All tests passed!
]0;jr232@gold12: ~/Desktop/cs214/labs/08[01;32mjr232@gold12[00m:[01;34m~/Desktop/cs214/labs/08[00m$ exit

Script done on 2021-03-26 13:27:26-0400
