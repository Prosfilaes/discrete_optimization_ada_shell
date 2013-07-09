with Ada.Containers.Vectors;

package Problem is
   
   -- XXX: Unimplemented
   -- Here's where your route (vector of nodes) or coloring or whatever is stored
   type Solution is new Integer;
   
   -- XXX: Unimplemented
   -- Usually types of data structures to store the input come here, 
   -- for Input to write into and Calculations to read.
   
   -- Procedures to print information to a file, instead of spewing it to
   -- standard out (which will mess up a submission) or to standard error
   -- (which is hard to capture if you're running submit.pyc).
   procedure Print (S : String);
   procedure Print_Line (S : String := "");
   
   function Solution_To_String (Sol : Solution) return String;
   
   -- Protect the solution and objective, so the output can safely print them
   -- without running into any calculations that might be running.
   protected Known_Values is
      function Read_Objective return Long_Float;
      procedure Read (Known_Objective: out Long_Float; Known_Solution : out Solution; Optimal : out Boolean);
      procedure Write (Known_Objective : in Long_Float; Known_Solution : in Solution);      
      -- Doesn't need to be syncronized, because reading an optimal objective and solution without
      -- the optimal bit is correct, if suboptimal.
      -- Unsyncronized lets things like branch-and-bound, that can discover optimality long after discovering
      -- a solution set_optimal without rediscovering the solution
      procedure Set_Optimal; 
      -- Not needed for normal runs, but for testing code it can come in handy
      procedure Clear;
   private
      Objective : Long_Float := Long_Float'Last; -- Assuming we're minimizing
      Sol : Solution;
      Is_Optimal : Boolean := False;
   end Known_Values;

end Problem;
