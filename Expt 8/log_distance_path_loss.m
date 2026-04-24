function path_loss = log_distance_path_loss(d, d0, PL_d0, n)
    % d: distance between Tx and Rx
    % d0: reference distance 
    % PL_d0: path loss at reference distance (dB)
    % n: path loss exponent
    
    path_loss = PL_d0 + 10 * n * log10(d/d0);
end
