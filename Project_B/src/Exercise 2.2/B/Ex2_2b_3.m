theta = linspace(0,2*pi, 300);  
phi = linspace(0,2*pi, 300); 
kd=3*pi/2;

[Theta, Phi] = meshgrid(theta, phi);
R=cos((7/2)*kd*cos(Phi).*sin(Theta))+cos((5/2)*kd*cos(Phi).*sin(Theta))+...
    cos((3/2)*kd*cos(Phi).*sin(Theta))+cos((1/2)*kd*cos(Phi).*sin(Theta)); 
X=R.*sin(Theta).*cos(Phi);
Y=R.*sin(Phi).*sin(Theta);
Z=R.*cos(Theta);

surf(X, Y, Z);
colormap(winter);

xlabel('X');
ylabel('Y');
zlabel('Z');
xlim([-4 4])
ylim([-4 4])
title('3D διάγραμμα ακτινοβολίας');
grid on;

%saveas(gcf,'Ex2_2b_3.pdf');