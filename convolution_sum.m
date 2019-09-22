
clear


% prompt1 = 'Enter the x value ?';
% x = input(prompt1);
% prompt2 = 'Enter the x value ?';
% h = input(prompt2);

x = [2 1 -1 -2 3];
h = [1,2,0,3];

zxp = 3
zyp = 2;

lnx = length(x);
lnh = length(h);
ln = length(x) + length(h)-1;

x = [x,zeros(1,lnx)];
h = [h,zeros(1,lnh)];

for i = 1 : ln
  y(i) = 0;
  for j = 1 : lnx
    if (i-j+1>0)
      y(i) = y(i) + x(j)*h(i-j+1);  
    end 
  end
end

disp(y);
%Z = conv(x,h)

xfy = -(zxp+zyp-2):1:ln -(zxp+zyp-2)-1;

subplot(2,2,1);
title("X = ");
stem(xfy,y);

