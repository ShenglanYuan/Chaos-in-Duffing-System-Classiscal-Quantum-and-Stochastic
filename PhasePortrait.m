% Program: see Figure 9.12.
clear
sys = @(t,x) [x(2);x(1)*(1-(x(1))^2)-x(2)];
vectorfield(sys,-2:.1:2,-2:.1:2);
hold on
sep=1;
for x0=-2:sep:2
for y0=-2:sep:2
[ts,xs] = ode45(sys,[0 4],[x0 y0]);
plot(xs(:,1),xs(:,2))
end
end
for x0=-2:sep:2
for y0=-2:sep:2
[ts,xs] = ode45(sys,[0 -4],[x0 y0]);
plot(xs(:,1),xs(:,2))
end
end
hold off
axis([-2 2 -2 2])
fsize=15;
set(gca,'XTick',-2:.5:2,'FontSize',fsize)
set(gca,'YTick',-2:.5:2,'FontSize',fsize)
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
hold off