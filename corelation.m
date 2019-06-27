
clear


% prompt1 = 'Enter the x value ?';
% x = input(prompt1);
% prompt2 = 'Enter the x value ?';
% h = input(prompt2);

x = [2,-1,3,7,1,2,-3];
y = [1,-1,2,-2,4,1,-2,5];
zx = 5;
zy = 5;

lnx = length(x);
lnh = length(h);
ln = length(x) + length(h)-1;

in=0;
for i = 1 : ln
    tmp = 0; 
    for j = 1:lnh
        p = j + i;
        if (p>=0&&p<lnx)
            tmp =  tmp + h(j)*x(p+1);
        end
    end
    in = in + 1;
    sum(in) = tmp; 
end
    
disp(sum);


