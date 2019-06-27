clear;
%continuos time sognal to discrete time signal
% x(t)=sin(2*pi*1000*t)+0.5sin(2*pi*2000*t+3*pi/4)
A=0 ;%amplitude
fs=8000 %sampling frequency
F= 0; %continuos frequency
f= F/fs; %discrete frequency
ts=1/fs  
N=8 %N point DFT
n=0:N-1;
x=sin(2*pi*1000/fs*n)+0.5*sin(2*pi*2000/fs*n+3*pi/4);
%subplot(2,1,1);
%plot(n,x);
a=zeros(1,N);
b=zeros(1,N);
X=zeros(1,N);
X_angle=zeros(1,N);
for m=1:N
  for i=0:N-1
    a(m)=a(m)+x(i+1)*cos(2*pi*i*m/N); %real part
    b(m)=b(m)-x(i+1)*sin(2*pi*i*m/N); %imaginary part
  endfor
  X(m)=sqrt(a(m)^2 + b(m)^2);
  X_angle(m)=atan(b(m)/a(m));
endfor
m=1:N;
%subplot(2,1,2);
stem(m,X);

f=zeros(1,N/2);
k=1;
for j=1:N/2
  if X(j)>1
    disp(X(j));
    f(k)=j*fs/N;
    k++;
  endif
endfor
disp('frequency');
disp(f);

disp(X_angle)