function xdot=Programs_Duf(t,x)
% The Duffing System.
% Run BifurcationDuffing
global Gamma;
xdot(1)=x(2);
xdot(2)=x(1)-0.1*x(2)-(x(1))^3+Gamma*cos(1.25*t);
xdot=[xdot(1);xdot(2)];