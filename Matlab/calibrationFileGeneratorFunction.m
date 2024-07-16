function [calibrationVector] = calibrationFileGeneratorFunction(modelParameters, FramesPerSecond, FlybackTimems, fileName)
%calibrationFileGenerator makes a voice coil calibration file based on the
%model parameters, the frames per second and the flyback time in milli seconds.
%   The modelParameters should be in the form of [a, b, c, d] where the
%   parameters corresponds to the third degree polynomial 
%   f = ax^3+bx^2+cx+d


if nargin < 4
    fileName = "calibration_"+"FPS_" + string(FramesPerSecond) + "_Flyback_" + string(FlybackTimems) + "_ms.txt";
end

N = 10000; % Number of points per second Default is 10kHz

x = linspace(0,1/FramesPerSecond,N/FramesPerSecond);

a = modelParameters(1);
b = modelParameters(2);
c = modelParameters(3);
d = modelParameters(4);

f = a*x.^3 + b*x.^2 + c*x + d;

%% flyback generation


FlybackTimems = FlybackTimems*10; % time 

if FlybackTimems == 0
    fFlyback = [];
else 
    xFlyback = linspace(0,FlybackTimems/N, FlybackTimems);

    linSlope = (f(1)-f(end))/((FlybackTimems)/N);

    fFlyback = linSlope*(xFlyback)+f(end);
end

fTotal = [f , fFlyback];
calibrationVector = fTotal';

writematrix(fTotal',fileName);



end

