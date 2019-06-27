clc;
clear;

fs=8000;
ts=1/fs;
N=8;


n=1:N;
x=sin(2*pi*1000*n*ts)+0.5*sin(2*pi*2000*n*ts);

for m=0:length(x)-1
real=0;
imaginary=0;

for i=0:N-1
real=real+(x(i+1)*cos((2*pi*m*i)/N));
imaginary=imaginary+(x(i+1)*sin((2*pi*m*i)/N));

end

result(m+1)=real;
result2(m+1)=imaginary;

end;

for iter=1:N

maginitiude(iter)=sqrt((result(iter)*result(iter))+(result2(iter)*result2(iter)));

end;
disp(maginitiude);

stem(n,maginitiude);