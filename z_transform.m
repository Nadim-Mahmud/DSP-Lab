clc;

x = [1,3,5,7,9];
zero_pos = 2;

b = 0;
n = length(x);
y = sym('z');

for i =  1:n
    b = b + x(i)*y^(i-zero_pos);
end

disp(b);