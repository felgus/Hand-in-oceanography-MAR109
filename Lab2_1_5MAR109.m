F = 20;
A = 0.5;
dT = 0.001;
h0 = 0;
h = [ ];
t(1) = 0;
h(1) = h0+dT*F/A;
R = 5;

A(1)= pi*h0*(2*R-h0);

for k = 1:20000
    
    A(k) = pi*h(k)*(2*R-h(k));
    t(k+1) =t(k)+dT;
    h(k+1) = h(k)+dT*F/A(k);
    
end
 

figure(1)
plot((1:20001)*dT,h, 'b');
title('1.5')
xlabel('Time (sek)')
ylabel('Height (cm)')
ylim ([0 5])
legend ('Numerical','Location', 'southeast')
