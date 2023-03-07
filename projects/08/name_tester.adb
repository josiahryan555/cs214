-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Josiah Ryan
-- Date:         3/29/21
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : Natural := 8;
  LastFirstMiddleInitial : String := "                 ";

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
  -- getFirst(Name) retrieves Name.myFirst      or getMiddle(Name) or getLast(Name)
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

----------------------------------------------
  -- setFirst(Name, String) modifies Name.myFirst        -
  -- Receive: TheName, a Name,  NewName, a String.                 -
  -- PRE: theName has been initialized.        -             
  ----------------------------------------------
procedure setFirst(TheName : in out Name; NewName : in String) is
   begin
      TheName.MyFirst := NewName;
   end setFirst;

  ----------------------------------------------
  -- setMiddle(Name, String) modifies Name.myMiddle        -
  -- Receive: TheName, a Name,  NewName, a String.                 -
  -- PRE: theName has been initialized.        -             
  ----------------------------------------------
procedure setMiddle(TheName : in out Name; NewName : in String) is
   begin
      TheName.MyMiddle := NewName;
   end setMiddle;

  ----------------------------------------------
  -- setLast(Name, String) modifies Name.myLast        -
  -- Receive: TheName, a Name,  NewName, a String.                 -
  -- PRE: theName has been initialized.        -             
  ----------------------------------------------
procedure setLast(TheName : in out Name; NewName : in String) is
   begin
      TheName.MyLast := NewName;
   end setLast;

  -----------------------------------------------------------------------------------
  -- lfmi (Name) returns a string of format MyLast MyFirst (first char of) MyMiddle -
  -- Receive: TheName, a Name.                                                      -
  -- PRE: theName has been initialized.                                             -
  -- Output: TheName.MyLast TheName.MyFirst TheName.MyMiddle(1) (first char of)     -             
  -----------------------------------------------------------------------------------
function lfmi(TheName : in Name) return String is
   begin 
      return TheName.MyLast & TheName.MyFirst & TheName.MyMiddle(1); 
   end lfmi;

  -----------------------------------------------------------------------------------
  -- reenterName (Name) sets MyFirst, MyMiddle, MyLast to user inputed strings      -
  -- Receive: TheName, a Name.                                                      -
  -- PRE: theName has been initialized.                                             -            
  -----------------------------------------------------------------------------------
procedure reenterName(TheName : in out Name) is
   first : String := "        ";
   middle : String := "        ";
   last : String := "        ";
   begin
      Put_Line("enter the new name");
      Put("First >");
      Get_Line(first, NAME_SIZE);
      setFirst(TheName, first);

      Put("Middle >");
      Get_Line(middle, NAME_SIZE);
      setMiddle(TheName, middle);

      Put("Last >");
      Get_Line(last, NAME_SIZE);
      setLast(TheName, last);
   end reenterName;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                   "getFullName() failed");

   Put(aName); New_line;

   --test setters
   setFirst(aName, "Paul    ");
   pragma Assert (getFirst(aName) = "Paul    ");
   setMiddle(aName, "Jones   ");
   pragma Assert (getMiddle(aName) = "Jones   ");
   setLast(aName, "John    ");
   pragma Assert (getLast(aName) = "John    ");

   --test lfmi
   LastFirstMiddleInitial := lfmi(aName);
   pragma Assert (LastFirstMiddleInitial = "John    Paul    J");
   
   --test reenterName
   Put_Line("To test the function 'ReenterName(Name)' enter 'Josiah Israel Ryan'");
   reenterName(aName);
   pragma Assert (getFirst(aName) = "Josiah  ");
   pragma Assert (getMiddle(aName) = "Israel  ");
   pragma Assert (getLast(aName) = "Ryan    ");

   Put("All tests passed!"); New_line;

end name_tester;

