clear
clc

x = [1.2, 2.1, 3.0, 3.6];   % X value array for Question_2
y = [0.7, 8.1, 27.7, 45.1];  % Y value array for Question_2 
%x = [1, 2, 3, 4, 5, 6];   % X value array for Question_3
%y = [14.5, 19.5, 30.5, 53.5, 94.5, 159.5];  % Y value for Question_3

dim = length(x) -1;  %Calculate Dimension
iter = 1;  %iteration
bias = zeros(dim, 1); % Make Bias Array
bias(1) = y(1); %b1 = f(x1)
diff = zeros(dim); %Make Diff Array
dim_offset = 0;        %To Calculate dimension for each iteration
Array_offset = 0;      %To store column


fprintf("Nam Young Woo's figure\n")
while 1 
    
    if iter == 1  
	%First iteration -> Require Y values for calculate Divided Difference 
        for i = 1:dim + dim_offset % for i = 1:3
            diff(i, iter) = diff_divide(x(i), x(i + iter), y(i), y(i+ iter));
            %Calculate First Divided Difference
        end
    else           %Other case -> Require previous Divided Difference
        for i = 1:dim + dim_offset
        % iter = 2 -> for i = 1:2, iter = 3 -> for i = 1:1
            diff(i, iter) = diff_divide(x(i), x(i + iter), diff(i, Array_offset), diff(i + 1, Array_offset));
            %Calculate Other Divide Difference
        end
    end
    fprintf('------------------------------------------------\n')
    fprintf('iter:%d\n current Divided Difference\n', iter);
    disp(diff);
    fprintf('------------------------------------------------\n')
    
    bias(iter + 1) = diff(1, iter);
    if(iter == dim)  %dimension == iter escape the loop
        break
    end
    iter = iter + 1;  
    dim_offset = dim_offset - 1;
    Array_offset = Array_offset + 1;
    
    
end
fprintf('Bias\n');
disp(bias);

% f_val = get_poly(x, bias, 4.5);
% fprintf('Polynomial value in x = 4.5 :%d\n',f_val);
% fprintf("Nam Young Woo's figure\n")

function [out] = diff_divide(X_1, X_2, Y_1, Y_2)  %function for Divided difference 
    out = (Y_2 - Y_1) / (X_2 - X_1);
end

function [f] = get_poly(X, b, const)  % Function for Getting polynomial value using X, bias and const x
    f = b(1);    %first bias
    for i = 2:size(b, 1)  % Second bias ~ last bias
        x_offset = 1;     % Variable for store each x difference, ex) (const-1)(const-4)
        for j = 1:i-1
            x_offset = x_offset * (const - X(j));     %Part of getting X difference
        end
        f = f + b(i) * x_offset;   % Sum calculated value in each iteration
    end
end