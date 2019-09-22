clc;
close;
clear;


N = 32;
n = 0:1:N-1;

%reqtanguler

for i = 1:N
  w(i) = 1;
endfor

subplot(2,2,1);
plot(n,w);
title('Rectangal Window');


%Trianguler

for i = 1:N/2
  w(i) = (i-1)/(N/2);
endfor


for i = N/2+1:N
  w(i) = 2 - (i-1)/(N/2);
endfor

subplot(2,2,2);
plot(n,w);
title('Triangular Window');

%Hanning whindow

for i = 1:N
  w(i) = .5 - .5*cos((2*pi*(i-1))/N);
endfor

subplot(2,2,3);
plot(n,w);
title('Hanning Window');

%Hamming window

for i = 1:N
  w(i) = .54 - .46*cos((2*pi*(i-1))/N);
endfor

subplot(2,2,4);
plot(n,w);
title('Hamming Window');
