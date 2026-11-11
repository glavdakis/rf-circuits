phi=linspace(0,2*pi,300);
kh_x=pi/sqrt(2);
kh_y=3*pi/sqrt(2);

E_hor=sin(kh_y*sin(phi)).*sin(kh_x*cos(phi));

figure;
polarplot(phi, E_hor);
thetalim([0 90]);
title('Οριζόντιο διάγραμμα ακτινοβολίας corner reflector antenna');
rticks([0.5 1]); 

%saveas(gcf,'Ex2_2d2_hor.pdf');