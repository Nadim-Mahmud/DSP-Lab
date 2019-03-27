clear


ampl = 10;
sampling_freq = 40;
Time = 1;
theta = 0;

% descrete 

freq = 1;
sample_number = -1:1/sampling_freq:Time;

y = ampl * cos(2*pi*sample_number*freq + theta);


% continious 

T = 2;
Freq = 1/T;
time = 0:1/sampling_freq:Time;
y2 = ampl * cos(2*pi*time*Freq + theta);

subplot(2,1,1);
stem(sample_number,y);
title('Descrete time signal : x(n) = Acos(2*pi*n*f + theta)');

subplot(2,1,2);
plot(time,y2);
title('Continious time signal : x(t) = Acos(2*pi*F*t + theta)');


