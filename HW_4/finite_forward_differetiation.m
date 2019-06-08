function [cal_val] = fiinte_forward_differetiation(y, index, interval)
    dx = interval(2) - interval(1); %Calculate interval gap
    cal_val = (-y(index+2) + 4 * y(index + 1) - 3 * y(index)) / (2 * dx);
    % Finite Forward Differentiation formula
end