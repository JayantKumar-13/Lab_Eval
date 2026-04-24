function path_loss = log_normal_shadowing_path_loss(d, d0, PL_d0, n, sigma)
     % d: distance between Tx and Rx
    % d0: reference distance 
    % PL_d0: path loss at reference distance (dB)
    % n: path loss exponent
    % sigma: standard deviation of shadowing (dB)
    
    shadowing = sigma * randn(); % Generate log-normal shadowing
    path_loss = log_distance_path_loss(d, d0, PL_d0, n) + shadowing;
end

