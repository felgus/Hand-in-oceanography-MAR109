F = 20;
A = 0.5;
deltat = 0.001;
h0 = 0;
h = [ ];
t(1) = 0;
h(1) = h0+deltat*F/A;
R = 5;

A(1)= pi*h0*(2*R-h0);

for k = 1:20000

    A(k) = pi*h(k)*(2*R-h(k));
    t(k+1) =t(k)+deltat;
    h(k+1) = h(k)+deltat*F/A(k)-alfa/A(k)*h(k)*deltat;

end


figure(1)
plot((1:20001)*deltat,h, 'b');
title('2.5')
xlabel('Time(sec)')
ylabel('Height(cm)')
ylim ([0 5])
legend ('Numerical','Location', 'southeast')

