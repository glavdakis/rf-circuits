theta = linspace(0,2*pi, 300);  
phi = linspace(0,2*pi, 300); 
kh_x=pi/sqrt(2);
kh_y=pi/sqrt(2);

[Theta, Phi] = meshgrid(theta, phi);
R=sin(kh_y*sin(Theta).*sin(Phi)).*sin(kh_x*sin(Theta).*cos(Phi)); 
X=R.*sin(Theta).*cos(Phi);
Y=R.*sin(Phi).*sin(Theta);
Z=R.*cos(Theta);

surf(X, Y, Z);
colormap(winter);

xlabel('X')
ylabel('Y')
zlabel('Z')
xlim([0 inf]) 
ylim([0 inf])
title('3D διάγραμμα ακτινοβολίας corner reflector antenna');
grid on;

%saveas(gcf,'Ex2_2d1_3D.pdf');