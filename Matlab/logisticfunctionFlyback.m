
PolyParam = [ -0.257, 0.543 ,-0.0481 , -0.0116];

a = 0.8; 
b = -2000.5;
c = -1;
d = -0.4;




%%

FramesPerSecond = 1;

N = 10000; % Number of points per second Default is 10kHz

x = linspace(0,1/FramesPerSecond,N/FramesPerSecond);

% =-0.257 + 0.543*F2 + -0.0481*F2^2 + -0.0116*F2^3

f = PolyParam(4)*x.^3 + PolyParam(3)*x.^2 + PolyParam(2)*x + PolyParam(1);

%% flyback generation



flybackTimems = 25; % Flyback time in milli seconds
flybackTime = flybackTimems * 10;

tFlyback = linspace(0,flybackTime/N, flybackTime)+1;

fFlyback = a./(1+exp(-b.*(tFlyback+c))) + d;


% if flybackTime == 0
%     fFlyback = [];
% else 
%     xFlyback = linspace(0,flybackTime/N, flybackTime);
% 
%     linSlope = (f(1)-f(end))/((flybackTime)/N);
% 
%     fFlyback = linSlope*(xFlyback)+f(end);
% end

 figure()
% plot(x,f);
% hold on;
 plot(tFlyback,fFlyback)

%%

fTotal = [f , fFlyback];

 figure()
 plot(fTotal)
 

