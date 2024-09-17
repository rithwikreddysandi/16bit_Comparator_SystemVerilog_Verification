class comp_gen;
  
  comp_tx tx;
  virtual comp_int vif;

  task run();
    
      $display("GEN");
      vif = comp_cfg::vif;  // Bind the virtual interface
      for (int i = 0; i < 10; i++) begin
        tx = new();
        if(!tx.randomize()) begin
          $display("Randomization failed at iteration %0d" , i);
        end 
        comp_cfg::gen2bfm.put(tx);  // Put the transaction into the gen2bfm mailbox
      end
  endtask
endclass
