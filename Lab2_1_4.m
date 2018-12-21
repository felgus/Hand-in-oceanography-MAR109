close all;clear all;clc
%Water increments in a bucket explained by: h(t)=F/A*t+c, h'(t)=F/A
 
dt=(1);         %Differences in time [s]
t1=0 ;          %starting-time [s]
t2=60;          %studied moment in time[s]
h0=0;           %water level at start [m]
A=pi*(0.05^2);         %Area [m^2]
F= 2.6*10.^-5;   %velocity of water flow [m^3 s^-1]
t=(t1:dt:t2);   %array for studied times
 
fx=F/A*t+h0;            %Analytical solution
h(1)=h0+(dt*(F/A));     %define the first water level as h(1)
disp(h(1));             %display h(1) in command window
 
 
 %loop for numerical solution of water level in the bucket up to height t2 for conditions defined above
for ii =1:t2     %from 1 to the size of t2
              
h(ii+1)=h(ii)+(dt*(F/A));    
 
end
 
