clc;
clear;

% x = 5*sin(2*pi*1000*t+pi/2);

fs1 = 2000;
ts1 = 1/fs1;

fs2 = 750;
ts2 = 1/fs2;


N = 8;
n = 0:N-1;


x1 =  5*sin(2*pi*1000*n*ts1 + pi/2);
x2 =  5*sin(2*pi*1000*n*ts2 + pi/2);

% for x1

for j = 0:N-1
    m = j+1;
    real1(m) = 0;
    img1(m) = 0;
    for i = 0:N-1
        real1(m) = real1(m) + x1(i+1)*cos(2*pi*i*j/N);
        img1(m) = img1(m) - x1(i+1)*sin(2*pi*i*j/N);
    end
     mag1(m) = sqrt(real1(m)^2 + img1(m)^2);
     phase1(m) = atan(img1(m)/real1(m));
end

%for x2

for j = 0:N-1
    m = j+1;
    real2(m) = 0;
    img2(m) = 0;
    for i = 0:N-1
        real2(m) = real2(m) + x2(i+1)*cos(2*pi*i*j/N);
        img2(m) = img2(m) - x2(i+1)*sin(2*pi*i*j/N);
    end
     mag2(m) = sqrt(real2(m)^2 + img2(m)^2);
end


m = 1:N;

subplot(3,1,1);
title('For x1 = ');
stem(m,mag1);

subplot(3,1,2);
title('For x2 = ');
stem(m,mag2);


disp('X1(m) = ')
disp(x1);

disp('X2(m) = ')
disp(x2);

% reconstructing 

% for x1

for j = 0:N-1
    ind = j+1;
    realrc1(ind) = 0;
    imgrc1(ind) = 0;
    for i = 0:N-1
        realrc1(ind) = realrc1(ind) + mag1(i+1)*cos(2*pi*i*j/N);
        imgrc1(ind) = imgrc1(ind) - mag1(i+1)*sin(2*pi*i*j/N);
    end
     magrc1(ind) = (1/N)*sqrt(realrc1(ind)^2 + imgrc1(ind)^2);
     
     if phase1(ind)<0
       % magrc1(ind) = -1*magrc1(ind); 
     end
end

disp('Reconstraction : ')
disp(magrc1);




