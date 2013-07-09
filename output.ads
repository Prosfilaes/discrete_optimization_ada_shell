with Ada.Task_Identification; use Ada.Task_Identification;

package Output is
   
   -- It stores a Task_ID so it can kill the calculation
   -- task after it does the final print out. Store_Task
   -- is also the start button; it doesn't start the timer
   -- until that's run. (It's usually better to store some
   -- sort of answer before starting the timer, just so you
   -- don't try and print out junk.)
   task Output_Results is
      entry Store_Task (TI : Task_ID);
      entry Output;
   end Output_Results;
   
end Output;
