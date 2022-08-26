% Phase portraits for nonautonomous systems.
deq=@(t,x) [x(2);x(1)-0.2*x(2)-(x(1))^3+6*cos(1.3*t)];
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xx]=ode45(deq,[0 200],[1,0],options);
plot(xx(:,1),xx(:,2))
fsize=15;
axis([-6.5 6.5 -6.5 6.5])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
%title('Phase portrait for the Duffing system')