-- list_package.ads declares an Ada linked list and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:  Josiah Ryan
-- Date:          04/16/21
------------------------------------------------------------------

package List_Package is

  -- the list-type itself (public)
  type List is private;

  -----------------------------------------------------
  -- Initialize a list                                -
  -- Receive: aList, a List.                          -
  -- Pre: aList is uninitialized.                     -
  -- Post: aList%itsFirst == aList%itsLast == NULL && -
  --        aList%itsLength == 0.                     -
  -----------------------------------------------------
  procedure Init(A_List: out List);


  ------------------------------------------------
  -- Is a list empty?                            -
  -- Receive: aList, a List.                     -
  -- Return: true, iff aList contains no values. -
  ------------------------------------------------
  function Empty(A_List: in List) return Boolean;

  -------------------------------------
  -- How many values are in a list?   -
  -- Receive: aList, a List.          -
  -- Return: aList%itsLength.         -
  -------------------------------------
  function Length(A_List : in List) return Integer;


  ----------------------------------------
  -- Append a value to a list.           -
  -- Receive: aValue, an integer,        -
  -- Passback: aList, containing aValue. -
  ----------------------------------------
  procedure Append(A_Value : in Integer; A_List: in out List);


  -------------------------------------
  -- Display the values in a list.    -
  -- Receive: aList, a List.          -
  -- Output: the values in aList.     -
  -------------------------------------

  procedure Put(A_List : in List);

  ---------------------------------------
  -- Find the maximum value in a list.  -
  -- Receive: aList, a List.            -
  -- Return: the maximum value in aList.-
  ---------------------------------------

  function maximum(A_List : in List) return integer;

  ---------------------------------------------------------------------------------
  -- search() finds the index of a passed value in a passed linked-list           -
  -- Receive: aList, a list of integers; and                                      -
  --        aValue, an integer.                                                   -
  -- Return: the position of aValue within aList, if aValue is present in aList;  -
  --        -1, otherwise.                                                        -    
  ---------------------------------------------------------------------------------
  function search(A_List : in List; A_Value : Integer) return integer;

 private

   type List_Node;

   type Node_Ptr is access List_Node;

      type List_Node is
          record
           Its_Value : Integer;
           Its_Next : Node_Ptr;
          end record;
   
      type List is  
          record 
            Its_First : Node_Ptr;
            Its_Last : Node_Ptr;
            Its_Length : Integer;
          end record;

end List_Package;

