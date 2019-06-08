function [cal_val] = backward_differentiation(y, index, interval)
    dx = interval(2) - interval(1);         %Calculate interval gap
    cal_val = (y(index) - y(index - 1)) / dx;
    % Finite Backword Differentiation formula
end


