with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings; use Ada.Strings;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

package body Problem is
   F: File_Type;
   
   procedure Print (S : String) is
   begin
      if not Is_Open (F) then
	 Create (F, Name => "Solver.output" & Trim (Integer'Image(Integer (Seconds (Clock))), Both));
      end if;
      Put (F, S);
   end Print;
   
   procedure Print_Line (S : String := "") is
   begin
      if not Is_Open (F) then
	 Print ("");
      end if;
      Put_Line (F, S);
      Flush (F);
   end Print_Line;
  
   function Solution_To_String (Sol : Solution) return String 
   is 
   begin
     -- XXX Unimplemented
     return Solution'Image (Sol);
   end Solution_To_String;    

   protected body Known_Values is
      function Read_Objective return Long_Float is
      begin
	 return Objective;
      end Read_Objective;
      
      procedure Read (Known_Objective : out Long_Float; Known_Solution : out Solution; Optimal : out Boolean) is
      begin	 
   	 Known_Objective := Objective;
   	 Known_Solution := Sol;
	 Optimal := Is_Optimal;
      end Read;
      
      procedure Write (Known_Objective : in Long_Float; Known_Solution : in Solution) 
      is
      begin
	 -- This lists improvements as they're registered. Good if you want to watch how
	 -- far along your algorithms are, but definitely optional.
	 Print_Line ("Known objective: " & Long_Float'Image (Known_Objective) );
	 if Known_Objective = Objective then
	    Print_Line ("Warning: New known objective isn't better then old; ignoring");
	 elsif Known_Objective > Objective then
	    Print_Line ("Error: New known objective is worse then old by " & 
			  Long_Float'Image (Known_Objective - Objective) & "; ignoring");
	 else
	    Sol := Known_Solution;
	    Objective := Known_Objective;
	 end if;
	 Flush;
      end Write;
      
      procedure Set_Optimal is
      begin
	 Is_Optimal := True;
      end Set_Optimal;
      
      procedure Clear is
      begin
	 Objective := Long_Float'Last;
	 Is_Optimal := False;
	 -- Leaving Sol alone since it's hard to clear
	 -- and its contents are irrelevant.
      end Clear;      
	 
   end Known_Values;
      
end Problem;
