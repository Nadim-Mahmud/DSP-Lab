clc;
clear;

% given continous signal x(t)=sin(2*pi*1000*t)+0.5sin(2*pi*2000*t+3*pi/4)

fs = 8000;
N = 8; % number of data point

ts = 1/fs;
n = 0:1:N;

y = sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts+3*pi/4)

stem(n,y)