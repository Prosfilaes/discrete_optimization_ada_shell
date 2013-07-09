with Ada.Command_Line;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Maps;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Exceptions;

with Problem; use Problem;
pragma Elaborate_All (Problem);
with Calculations;

package body Input is
   -- XXX: Unimplemented
   -- Actually a sample implementation for TSP.
   function Parse_Float (A : Unbounded_String; Pos : Natural) return Long_Float is
      First, Last : Natural;
      New_First : Positive;
      Digits_Set : constant Ada.Strings.Maps.Character_Set
	:= Ada.Strings.Maps.To_Set ("0123456789.+-e");
   begin
      Find_Token (A, Digits_Set, Ada.Strings.Inside, New_First, Last);
      if Last = 0 then
	 raise Constraint_Error;
      elsif Pos = 1 then
	 return Long_Float'Value (Slice (A, New_First, Last));
      else
	 First := Last + 1;
      end if;
      for I in 2 .. Pos loop
	 Find_Token (A, Digits_Set, First, Ada.Strings.Inside, New_First, Last);
	 if Last = 0 then
	    raise Constraint_Error;
	 else
	    First := Last + 1;
	 end if;
      end loop;
      return Long_Float'Value (Slice (A, New_First, Last));
   end Parse_Float;
   
   task body Input_Data is
      File : File_Type;
      Line : Ada.Strings.Unbounded.Unbounded_String;
      Num_Points : Natural;
--      Points : Point_List;        
   begin
      Open (File => File, Mode => In_File, Name => Ada.Command_Line.Argument (1));

      Line := Get_Line (File);
      Num_Points := Natural'Value (To_String (Line));
      -- XXX: Unimplemented
--      for I in 1 .. Num_Points loop
--	 Line := Get_Line (File);
--	 Points.Append ((X => Parse_Float (Line, 1),
--			Y => Parse_Float (Line, 2)));
--      end loop;
      Calculations.Calculate_Results.Start (Num_Points);
   exception
      when E: others =>
	 -- If something screws up, make sure it gets printed out (not to Standard Output)
	 -- (With tasks, it doesn't magically get printed out anywhere without this code.)
	 Problem.Print_Line (Ada.Exceptions.Exception_Information (E));	 
   end Input_Data;
   
end Input;
