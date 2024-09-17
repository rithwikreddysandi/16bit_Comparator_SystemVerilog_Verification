// Checker Class(comparator)
class comp_ckr;
  comp_tx tx;//obj used to store the tx (ip/ops) for checking.
  
  task run();
    
    $display("Initialising the Comparator Checker");
    
    forever begin 
      comp_cfg::mon2ckr.get(tx);
      
      if(tx.a < tx.b && tx.less && !tx.equal && !tx.greater ||
         tx.a == tx.b && !tx.less && tx.equal && !tx.greater ||
         tx.a > tx.b && !tx.less && !tx.equal && tx.greater) begin
        $display($time, " Data correct: a=%h, b=%h, less=%b, equal=%b, greater=%b", tx.a, tx.b, tx.less, tx.equal, tx.greater);
      end
      
      else begin
        $display($time, " ERROR: Data incorrect: a=%h, b=%h, less=%b, equal=%b, greater=%b", tx.a, tx.b, tx.less, tx.equal, tx.greater);
      end
      
    end
    
  endtask
  
endclass
      
  