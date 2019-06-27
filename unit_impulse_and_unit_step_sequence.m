clear;

n = 10;

shift = -5;

impulsex = -n/2:1:n/2;
impulsey = [zeros(1,5),ones(1,1),zeros(1,5)];


subplot(4,2,1);
stem(impulsex,impulsey);
title('Unit Impulse Sequence');

stepy = ones(1,n);
stepx = 0:1:n-1;


subplot(4,2,2);
stem(stepx,stepy);
title('Unit Step Sequence');

%shift

for i = 1:n
    impulsex(i) = impulsex(i) - shift ;
end

subplot(4,2,3);
stem(impulsex,impulsey);
title('Shift Unit Step Sequence');

%revarsal


for i = 1:n
    impulsex(i) = -impulsex(i) ;
end

subplot(4,2,4);
stem(impulsex,impulsey);
title('Time Reversal');

%function





