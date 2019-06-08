function [int_val] = Simpson_3_8(interval,func)
    x0 = interval(1);
    x3 = interval(2);
    x1 = (x0 + x3) / 3;
    x2 = 2 * (x0 + x3) / 3;
    cal_value = feval(func, x0) + 3 * feval(func, x1) + 3 * feval(func, x2) + feval(func, x3);
    int_val = (x3 - x0) * cal_value / 8;
end
