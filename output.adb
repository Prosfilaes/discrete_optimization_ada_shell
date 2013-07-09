with Problem; use Problem;
pragma Elaborate_All (Problem);
with Ada.Text_IO; use Ada.Text_IO;

package body Output is
   -- Time in seconds before releasing data
   -- Current setting -- 4.5 hours, to get it in below 5
   Wait_Time : constant Duration := 4.5 * 60.0 * 60.0;
   
   task body Output_Results is
      Optimal : Boolean; 
      Objective : Long_Float;
      Sol : Solution;
      Calculation_Task : Task_Id;
   begin
      accept Store_Task (TI : Task_Id) do
	 Calculation_Task := TI;
      end Store_Task; 
      select
	 accept Output do
	    null;
	 end Output;
      or
	 delay Wait_Time;
      end select;
      Known_Values.Read (Objective, Sol, Optimal);
      Put_Line (Long_Float'Image (Objective) & (if Optimal then " 1" else " 0"));
      Put_Line (Solution_To_String (Sol));
      Flush;
      Abort_Task (Calculation_Task);
   end Output_Results;
   
end Output;
