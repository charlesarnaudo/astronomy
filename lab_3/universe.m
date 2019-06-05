clear all;
close all;

om = 0.8;
od = 0.01;

curTime = 0;
curScale = 1;
curH0 = 0.75;
dt = 0.01;
i = 1;

while curTime < 10
    accel = -om/(2*curScale^2) + od * curScale;
    curH0 = curH0 + dt * accel;
    curScale = curScale + dt * curH0;
    curTime = curTime + dt;
    time(i) = curTime;
    scale(i) = curScale;
    i = i + 1;
end

figure
plot(time, scale)
xlabel('Time')
ylabel('Scale')