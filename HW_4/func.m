function [y, interval] = func(x, index)
    switch index
        case 1                      %Prob 2 - 1 function 
            y = @(x) exp(-2 * x);   %Make Function 
            interval = [x(1), x(length(x))];
        case 2                      %Prob 2 - 1 function for Gauss_ quadrature
            y = @(x) 2 * exp(-(x + 1));  %Make Function 
            interval = [x(1), x(length(x))];
        case 3                      %Prob 2 - 2 function
            y = @(x) sin(x.^3);     %Make Function 
            interval = [x(1), x(length(x))];
        case 4                      %Prob 2 - 3 function
            y = @(x) sin(x) / x;    %Make Function 
            interval = [x(1), x(length(x))];
        case 5          %Prob 3
            y = [0.3333, 2.6667, 9, 21.3333, 41.6667];
            interval = [1, 2, 3, 4, 5];
    end
end