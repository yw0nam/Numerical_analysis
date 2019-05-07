clc
clear

obj_err_rate = 10^-4;

iter = 0; %iteration 
A = [7 -2 1 0; 1 -9 3 -1; 2 0 10 -1; 1 -1 1 6];  %original metrix
b = [17; 13; 15; 10];                            % bias

[r, c] = size(A);
x = zeros(c, 1);                                 % inital X
temp = [A b];                                    % unite A and b

%Loop for iteration
while 1
    x_old = x;
    iter = iter + 1;
    %forward elimination
    for i = 1:c-1
        for j = i+1:c
            div_fac = temp(j, i) / temp(i, i);
            temp(j, i:c+1) = temp(j, i:c+1) - div_fac * temp(i, i:c+1);
        end
    end


    %back ward elimination
    x(c) = temp(c, c+1) / temp(c, c);
    for i = c-1:-1:1
        x(i) = (temp(i, c+1)- temp(i, i+1:c) * x(i+1:c)) / temp(i, i);
    end
    %printing part
    current_error = norm(x_old-x);
    disp(temp);
    fprintf('                iter:%d ,current error:%0.5e\n', iter, current_error);
    
    %if error is small enough
    if current_error < obj_err_rate
        break;
    end
    
    %if iteration is above 100  -> can't find proper X
    if iter > 100 
        break
    end
end
    fprintf('Nam young Woo\n')
