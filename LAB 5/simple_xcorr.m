function [c, lags] = simple_xcorr(x, y)
    % Ensure inputs are column vectors
    x = x(:);
    y = y(:);
    
    % Get lengths
    Nx = length(x);
    Ny = length(y);
    maxlag = max(Nx, Ny) - 1;
    
    % Zero-pad shorter vector
    if Nx < Ny
        x = [x; zeros(Ny - Nx, 1)];
    elseif Ny < Nx
        y = [y; zeros(Nx - Ny, 1)];
    end
    
    % Compute cross-correlation using convolution
    c = conv(x, flipud(conj(y)));
    
    % Define lags
    lags = -maxlag:maxlag;
    
    % Extract relevant portion
    c = c(Ny:end-Ny+1);
end
