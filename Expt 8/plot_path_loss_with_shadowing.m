function plot_path_loss_with_shadowing(d_range, d0, PL_d0, n, sigma)
    path_losses = zeros(size(d_range));
    for i = 1:length(d_range)
        path_losses(i) = log_normal_shadowing_path_loss(d_range(i), d0, PL_d0, n, sigma);
    end
    
    figure;
    plot(d_range, path_losses, 'b', 'LineWidth', 2);
    xlabel('Distance (m)');
    ylabel('Path Loss (dB)');
    title('Path Loss with Log-Normal Shadowing');
    grid on;
end