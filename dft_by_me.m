clc;
clear;

% given continous signal x(t)=sin(2*pi*1000*t)+0.5sin(2*pi*2000*t+3*pi/4)

fs = 8000; %sampling frequency
N = 8;  %number of data point
n = 0:N-1;
ts = 1/fs;
in = 0;

x = sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts+3*pi/4);

%DFT ecuation evaluation 
%i=>n  j=>m

for j = 0: N-1
  m = j+1;
  real(m) = img(m) = 0;
  for i = 0: N-1
    real(m) = real(m) + x(i+1)*cos(2*pi*i*j/N);
    img(m) = img(m) + x(i+1)*sin(2*pi*i*j/N);
  endfor
  ampl(m) = sqrt(real(m)^2 + img(m)^2);
  phase(m) = atan(img(m)/real(m));
  
  if ampl(m)>.01 && j<=N/2
    in = in + 1;
    freq(in) = j*fs/N;
    amplfq(in) = ampl(m);
    phasefq(in) = phase(m);
  end
endfor

m = 1:N;
disp(ampl);
disp(freq);
disp(phasefq);
stem(m,ampl);