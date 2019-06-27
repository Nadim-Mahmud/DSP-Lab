
clear


% prompt1 = 'Enter the x value ?';
% x = input(prompt1);
% prompt2 = 'Enter the x value ?';
% h = input(prompt2);

x = [3 2 1 2];
h = [1 2 1 2];

lnx = length(x);
lnh = length(h);
ln = length(x) + length(h)-1;

in=0;
for i = 1 : ln
    tmp = 0; 
    for j = 1:lnh
        p = -1*j + i;
        if (p>=0&&p<lnx)
            tmp =  tmp + h(j)*x(p+1);
        end
    end
    in = in + 1;
    sum(in) = tmp; 
end
    
disp(sum);


