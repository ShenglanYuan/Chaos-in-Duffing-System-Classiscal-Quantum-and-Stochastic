% The double-well energy.
figure
fsize=15;
ezsurfc('y^2/2-x^2/2+x^4/4',[-1.8,1.8]);
set(gca,'XTick',-1.8:0.6:1.8,'FontSize',fsize)
set(gca,'YTick',-1.8:0.6:1.8,'FontSize',fsize)
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
zlabel('H','FontSize',fsize)
title('Energy surface')
figure
ezcontour('y^2/2-x^2/2+x^4/4',[-1.8,1.8]);
set(gca,'XTick',-1.8:0.6:1.8,'FontSize',fsize)
set(gca,'YTick',-1.8:0.6:1.8,'FontSize',fsize)
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Contour plot')