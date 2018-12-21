
close all; clear all;
    % Height interval
dt=1;
    % Scale height
F=26,16;
A=(5^2)*pi;

t=(1:61)*dt;

H=(F*t)/A;

h0=0;

h(1)=h0+dt*(F/A);

% Model loop starting from ground level
     h(1)=0; t(1)=0;
     for kk=1:60;
% t(kk+1)=t(kk)+dt;
    

% timestepping equation
h(kk+1)=h(kk)+dt*(F/A);
     end
     
figure(1)
plot(t,h,'k.',t,H,'m',t,(h-H));
xlabel('Time (s)')
ylabel('Water level (m)')
legend('Numeric','Analytic','Difference')
%%
% close all; clear all;

f= 20;
R= 5;

hh0=0;
dt= 0.0001;
dh=5/1000;
hh(1)=hh0+dh;
tt0=0;
tt(1)=dt;

     for kk=1:200000;
    A=pi*hh(kk)*(2*R-hh(kk));   
     
    tt(kk+1)=tt(kk)+dt;     
         
    hh(kk+1)=hh(kk)+dt*(f/A);
     end

Y = tt(hh<5); X = Y(:,end); disp(X)     
     
figure(2)
plot(tt,hh)
xlabel('Time (s)')
ylabel('Water level (m)')
ylim([0 5])

%%
dt=1;
    % Scale height
F=20;
A=(5^2)*pi;

% Flik=1*h

% t=(1:61)*dt;

h0=0;

h(1)=h0+dt*(F/A);

% Model loop starting from ground level
     h(1)=0; t(1)=0;
     for kk=1:60;
t(kk+1)=t(kk)+dt;
 Ftot=F-(1*h(kk));   

% timestepping equation
h(kk+1)=h(kk)+dt*(Ftot/A);
     end
H=(F*t)/A;  
figure(1)
plot(t,h,'k.',t,H,'m',t,(h-H));
xlabel('Time (s)')
ylabel('Water level (m)')

legend('Numeric','Analytic','Difference')
%%
f= 20;
R= 5;

hh0=0;
dt= 0.0001;
dh=5/10000;
hh(1)=hh0+dh;
tt0=0;
tt(1)=dt;

     for kk=1:200000;
    A=pi*hh(kk)*(2*R-hh(kk));   
     
    tt(kk+1)=tt(kk)+dt;     
    Ftot=f-(1*hh(kk));  
    hh(kk+1)=hh(kk)+dt*(Ftot/A);
     end
Y = tt(hh<5); X = Y(:,end); disp(X)

figure(2)
plot(tt,hh)
xlabel('Time (s)')
ylabel('Water level (m)')
ylim([0 5])