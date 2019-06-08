clc
clear

x = linspace(0, 1); % x for Prob 2- 1
x_1 = linspace(-1, 1); % x for Prob 2- 1's Gauss
x_2 = linspace(-2, 6); % x for Prob 2- 2
x_3 = linspace(1, 2); % x for Prob 2- 3

%Get function Y and interval
[y, interval] = func(x, 1);         
[y_1, interval_1] = func(x_1, 2);  
[y_2, interval_2] = func(x_2, 3);
[y_3, interval_3] = func(x_3, 4);
[y_4, interval_4] = func(x, 5); 

%Solution by Trapzoidal Rule
Sol_2_1_Trap = Trapezoidal_Rule(interval, y);
Sol_2_2_Trap = Trapezoidal_Rule(interval_2, y_2);
Sol_2_3_Trap = Trapezoidal_Rule(interval_3, y_3);

%Soulution by Simpson 1/3 Rule
Sol_2_1_sim_1_3 = Simpsons_1_3(interval, y);
Sol_2_2_sim_1_3 = Simpsons_1_3(interval_2, y_2);
Sol_2_3_sim_1_3 = Simpsons_1_3(interval_3, y_3);

%Solution by Simpson 3/8 Rule
Sol_2_1_sim_3_8 = Simpsons_3_8(interval, y);
Sol_2_2_sim_3_8 = Simpsons_3_8(interval_2, y_2);
Sol_2_3_sim_3_8 = Simpsons_3_8(interval_3, y_3);

%Solution by Matlab integral (Assume Exact Solution)
Sol_2_1_exact = integral(y, interval(1), interval(2), 'ArrayValued', true);
Sol_2_2_exact = integral(y_2, interval_2(1), interval_2(2), 'ArrayValued', true);
Sol_2_3_exact = integral(y_3, interval_3(1), interval_3(2), 'ArrayValued', true);

%Solution for  Differentiation
Sol_3_BD = backward_differetiation(y_4, 2, interval_4); %forward
Sol_3_CD = centered_differetiation(y_4, 2, interval_4); %backward
Sol_3_FFD = finite_forward_differetiation(y_4, 2, interval_4); %centeredwo