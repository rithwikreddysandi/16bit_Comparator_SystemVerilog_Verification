class comp_mon;
  virtual comp_int vif;  // Virtual interface for the comparator
  comp_tx tx;            // Transaction object

  task run();
    
      $display("Comparator Monitor Initiated");
    
      vif = comp_cfg::vif;  // Bind the virtual interface

      forever begin
        tx = new();
         // Wait for any change on the virtual interface signals

        // Capture input and output values from the virtual interface
        tx.a = vif.a;
        tx.b = vif.b;
        tx.less = vif.less;
        tx.equal = vif.equal;
        tx.greater = vif.greater;

        // Send the transaction to the checker and coverage mailboxes
        comp_cfg::mon2ckr.put(tx);
        comp_cfg::mon2cov.put(tx);
        
        @(posedge vif.a or posedge vif.b);
        
    end
    
  endtask
  
endclass
