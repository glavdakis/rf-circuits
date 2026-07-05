phi=linspace(0,2*pi,300);
theta=linspace(0,2*pi,300);
kd=pi/2;

E_hor=(1/4)*(cos((7/2)*kd*cos(phi))+cos((5/2)*kd*cos(phi))+...
    cos((3/2)*kd*cos(phi))+cos((1/2)*kd*cos(phi)));
E_ver=(1/4)*(cos((7/2)*kd*sin(theta))+cos((5/2)*kd*sin(theta))+...
    cos((3/2)*kd*sin(theta))+cos((1/2)*kd*sin(theta)));

figure;
subplot(1, 2, 1, polaraxes);
polarplot(phi, E_hor);
title('Οριζόντιο διάγραμμα ακτινοβολίας');
rticks([0.5 1]); 

subplot(1, 2, 2, polaraxes);
polarplot(theta, E_ver);
ax = gca;
ax.ThetaDir = 'clockwise';  
ax.ThetaZeroLocation = 'top';  
title('Κατακόρυφο διάγραμμα ακτινοβολίας');
rticks([0.5 1]); 

%saveas(gcf,'Ex2_2a_1.pdf');