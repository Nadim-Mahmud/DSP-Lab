clear


ampl = 1;
samplingFreq1 = 40;
numberCycle = 5;
theta = 0;

% descrete 

freq = 1;
sample_number = 0:1/samplingFreq1:numberCycle*1/freq;

y = ampl * cos(2*pi*sample_number*freq + theta);


% continious 

samplingFreq2 = 100;
Freq = 1;
time = 0:1/samplingFreq2:numberCycle*1/Freq;
y2 = ampl * cos(2*pi*time*Freq + theta);

subplot(2,1,1);
stem(sample_number,y);
title('Descrete time signal : x(n) = Acos(2*pi*n*f + theta)');

subplot(2,1,2);
plot(time,y2);
title('Continious time signal : x(t) = Acos(2*pi*F*t + theta)');


