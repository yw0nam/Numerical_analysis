function [cal_val] = centered_differetiation(y, index, interval)
    dx = interval(2) - interval(1); %Calculate interval gap
    cal_val = (y(index + 1) - y(index - 1)) / (2 * dx);
    % Finite Centered Differentiation formula
end

