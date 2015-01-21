function conv2out_mem()
    global config mem;
    idx = reshape(1:config.output_size(1) * config.output_size(2), config.output_size(1), config.output_size(2));
    idx = im2col(idx, config.kernel_size(size(config.kernel_size, 1), :));
    mem.gen_out_matrix = config.NEW_MEM(idx);
    mem.output = config.NEW_MEM(zeros(config.output_size(1), config.output_size(2), config.output_size(3), config.batch_size));
    
    counts = ones(size(idx));
    counts = reshape(accumarray(mem.gen_out_matrix(:), counts(:)), config.output_size(1), config.output_size(2));
    mem.one_over_add_counts = config.NEW_MEM(1 ./ counts);
end
