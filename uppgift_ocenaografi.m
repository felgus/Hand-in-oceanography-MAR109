close all; clear all;
    % Height interval
dt=0.5;
    % Scale height
F = 2.6*10^(-5);
A = 0.05^2 * pi;

% Model loop starting from ground level
     h(1)=0; t(1)=0;
     for kk=1:200;
t(kk+1)=t(kk)+dt;
    

% timestepping equation
h(kk+1)=h(kk)+dt*(F/A);
end
plot(t,h); xlabel ('Time in seconds'), ylabel ('Water level in M');