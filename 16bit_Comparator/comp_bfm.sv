class comp_bfm;
  
  virtual comp_int vif;  // Virtual interface for the comparator
  comp_tx tx;

  task run();
    
      $display("BFM (BUS FUNCTIONAL MODULE)");
      vif = comp_cfg::vif;  // Bind the virtual interface

      forever begin
        comp_cfg::gen2bfm.get(tx);  // Get transaction from generator to BFM mailbox
        drive();                          // Drive the inputs based on the transaction
      end
    
  endtask

  task drive();
    

      vif.a <= tx.a;  // Drive the 'a' input of the comparator
      vif.b <= tx.b;  // Drive the 'b' input of the comparator
    
  endtask
endclass
