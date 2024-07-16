

FramesPerSecond = 5;

N = 10000; % Number of points per second Default is 10kHz

x = linspace(0,1/FramesPerSecond,N/FramesPerSecond);

a = -0.0116;
b = -0.0481;
c = 0.543;
d = -0.257;

% =-0.257 + 0.543*F2 + -0.0481*F2^2 + -0.0116*F2^3

f = a*x.^3 + b*x.^2 + c*x + d;

%% flyback generation


flybackTime = 25*10; % time 

if flybackTime == 0
    fFlyback = [];
else 
    xFlyback = linspace(0,flybackTime/N, flybackTime);

    linSlope = (f(1)-f(end))/((flybackTime)/N);

    fFlyback = linSlope*(xFlyback)+f(end);
end

% figure()
% plot(x,f);
% hold on;
% plot(xFlyback,fFlyback)

%%

fTotal = [f , fFlyback];

% figure()
% plot(fTotal)


%%


fileName = "calibration_"+"FPS_" + string(FramesPerSecond) + "_Flyback_" + string(flybackTime/10) + "_ms.txt";

writematrix(fTotal',fileName);
