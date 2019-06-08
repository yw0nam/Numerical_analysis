function [int_val] = Simpson_1_3(interval,func)
    x0 = interval(1);  
    x2 = interval(2);
    x1 = (x0 + x2) / 2;  % Calculate Average
    
    int_val = (x2 - x0) * (feval(func, x0) + 4 * feval(func, x1) + feval(func, x2)) / 6;
    %Simpson Rule 1/3 formula
end