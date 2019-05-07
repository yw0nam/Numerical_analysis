clear
clc

A = [7 -2 1 0; 1 -9 3 -1; 2 0 10 -1; 1 -1 1 6];
b = [17; 13; 15; 10];  
[r, c] = size(A);
x = zeros(c, 1);


obj_err_rate = 10^-4;
iter = 0;

while 1   % Loop Start
    x_old=x;
        
    for i=1:c      %Row index
        sum = 0;   %declare sum
        for j = 1:c   %Column index
            if(i ~= j && i < j)  % i < j -> A(i, j) * x_old(j)
                sum = sum + A(i, j) * x_old(j);
            end
            if(i ~= j && i > j)  % i > j -> A(i, j) * x(j)
                sum = sum + A(i, j) * x(j);
            end
        end
        x(i) = (b(i) - sum) / A(i,i);  % replace new x(i)
    end
    
    iter=iter+1;
    current_error = norm(x_old-x);
    fprintf('------------------------------------------------\n')
    fprintf('iter:%d ,current error:%0.5e\n', iter, current_error);
    fprintf('Currnet X value\n');
    fprintf('------------------------------------------------\n')
    disp(x);

    %if error is small enough
    if current_error < obj_err_rate
        break;
    end
    
    %if iteration is above 100  -> can't find proper X
    if iter > 100
        break
    end
end

fprintf('Nam Young Woo\n');