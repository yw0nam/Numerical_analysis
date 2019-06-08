function [int_val] = Trapezoidal_Rule(interval,func)  %Trapezodial Rule function
    left = interval(1);     %left Boundary
    right = interval(2);    %Right Boundary
    int_val = (right - left) * (feval(func, right) + feval(func, left)) / 2;
    %integral Value
end