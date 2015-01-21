function reset_mem()
    global mem;
    mem.layer_inputs = {};
    mem.activations = {};
    mem.deltas = {};    
    mem.pool2conv = {};
    mem.gen_out_matrix = {};
    mem.convBpool = {};
    mem.pooling_matrix ={};
    mem.output = 0;
    mem.one_over_add_counts = 0;
    mem.grads = {};
end

