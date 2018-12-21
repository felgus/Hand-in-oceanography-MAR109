F = 20;
A = pi*(5^2);
deltat = 1;
h0 = 0;
h = [ ];
t(1) = 0;
h(1) = h0+deltat*F/A;
alfa = 1;
for k = 1:200
    t(k+1) =t(k)+deltat;
    %h(k+1) = h(k)+(deltat*((F-alfa*h(k)))/A);
    h(k+1)= h(k)+deltat*F/A-alfa/A*h(k)*deltat;
end
 

% H(1) = h0+deltat*F/A;

figure(1)
plot((1:201)'* deltat,h, 'k');
title('2.4')
xlabel('Time (sec)')
ylabel('Height (cm)')
legend ('Numerical', 'Location', 'southeast')
