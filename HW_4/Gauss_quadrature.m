function [int_val] = Gauss_quadrature(func, dim)
    cal_dim = ceil(2 * dim - 1);
    switch cal_dim
        case 2
            x0 = 0.577;
            int_val = feval(func, -x0) + feval(func, 0.578);
        case 3
            c0 = 0.556;
            c1 = 0.889;
            x0 = 0.775;
            int_val = c0 * feval(func, -x0) + c1 * feval(func, 0) + c0 * feval(func, x0);
        case 4
            c0 = 0.348;
            c1 = 0.652;
            x0 = 0.861;
            x1 = 0.340;
            int_val = c0*(feval(func, -x0)+feval(func, x0)) + c1 *(feval(func, -x1) + feval(func, x1));
        case 5
            c0 = 0.240;
            c1 = 0.479;
            x0 = 0.906;
            x1 = 0.538;
            int_val = c0*(feval(func, -x0) + feval(func, x0)) + c1*(feval(func, -x1) + feval(func, x1)) + 0.569 * feval(func, 0);
    end
end