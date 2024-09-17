class comp_cov;
  comp_tx tx;

  covergroup comp_cg;
    less_cover: coverpoint tx.less {
      bins less_bin = {1};
    }
    equal_cover: coverpoint tx.equal {
      bins equal_bin = {1};
    }
    greater_cover: coverpoint tx.greater {
      bins greater_bin = {1};
    }
    option.per_instance = 1;
  endgroup

  function new();
    this.comp_cg = new();
  endfunction

  task run();
    $display("Coverage Collection Started");
    forever begin
      comp_cfg::mon2cov.get(tx);
      comp_cg.sample();
      
    end
  endtask
endclass
