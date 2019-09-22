clc;
clear;
close;

% given continous signal x(t)=sin(2*pi*1000*t)+0.5sin(2*pi*2000*t+3*pi/4)

fs = 8000; %sampling frequency
N = 8;  %number of data point
n = 0:N-1;
ts = 1/fs;

x=sin(2*pi*1000/fs*n)+.5*sin(2*pi*2000/fs*n+3*pi/4);

for m = 0:N-1
  X(m+1) = 0;
  for n = 0:N-1
    X(m+1) = X(m+1) + x(n+1)*exp(-i*2*pi*n*m/N);
  endfor
endfor

mag = abs(X);
phase = angle(X);
in=0;

for i = 1:N/2
  if mag(i)>.001
     in = in + 1;
     freq(in) = (i-1)*fs/N;
     ampl(in) = 2*mag(i)/N;  
   end
endfor

m = 1:N;

disp(mag);
disp(freq);
disp(ampl);

subplot(3,1,1);
stem(m,mag);
title('Amplitide spectrum');


subplot(3,1,2);
stem(m,phase);
title('Phase spectrum');

Z = real(ifft(X));
sprintf('%f ', Z)
x
