with Ada.Task_Identification;
with Ada.Exceptions;

with Output;
with Problem;

  
pragma Elaborate_All (Problem);

package body Calculations is
   
   -- Algorithms
   
   procedure Quick_And_Dirty;
   procedure Figure_It_Out;
   
   -- Task problems are often stored globally.
   -- Purity-wise, it could be made into an object
   -- and all the procedures made methods of that
   -- object. Functionally identical if there's just
   -- one task.
   Num_Points : Natural;
   
   -- The one and only driver
   task body Calculate_Results is      
   begin
      accept Start (NP : in Natural) do
	 Num_Points := NP;
      end Start;
      -- Stores into Known_Values
      Quick_And_Dirty;
      Problem.Print_Line ("Quick and dirty complete");
      -- Start the timer
      Output.Output_Results.Store_Task (Ada.Task_Identification.Current_Task);
      -- May read from Known_Values
      Figure_It_Out; 
      Output.Output_Results.Output;
   exception
      when E: others =>
	 -- If something screws up, make sure it gets printed out (not to Standard Output)
	 -- (With tasks, it doesn't magically get printed out anywhere without this code.)
	 -- Then dump the results we have
	 Problem.Print_Line (Ada.Exceptions.Exception_Information (E));	 
	 -- This will lock if Store_Task hasn't been called!
	 Output.Output_Results.Output;
   end Calculate_Results;
   
   -- Figure out what a solution is worth
   function Task_Value (Sol : Solution) return Long_Float is
   begin
      return abs (Long_Float (Sol) - 2.0 * Long_Float (Num_Points));
   end Task_Value;
   
   procedure Quick_And_Dirty is
      Sol : Solution := Solution (20 * Num_Points);
   begin
      -- Approximating 2 * NP
      Known_Values.Write (Task_Value (Sol), Sol);
   end Quick_And_Dirty;
   
   procedure Figure_It_Out is
      Sol : Solution;
      Obj : Long_Float;
   begin
      for I in -100 .. 50 loop
	 -- Try I * Num_Points
	 Sol := Solution (I * Num_Points);
	 Obj := Task_Value (Sol);
	 -- I usually store a local copy of Known_Values
	 -- But this permits multitasking solvers and is
	 -- probably not seriously slower
	 if Obj = 0.0 then
	    Known_Values.Write (Obj, Sol);
	    Known_Values.Set_Optimal;
	    return;
	 elsif Obj < Known_Values.Read_Objective then 
	    -- Save improvement incase we run out of time	    
	    Known_Values.Write (Obj, Sol);
	 end if;
      end loop;
   end Figure_It_Out;
   
end Calculations;
