theta_points=181;
phi_points=361;
kd=pi;
theta=linspace(0, pi, theta_points);
phi=linspace(0, 2*pi, phi_points);

[Theta, Phi]=meshgrid(theta, phi);

E=(cos((7/2)*kd*cos(Phi).*sin(Theta))+...
    cos((5/2)*kd*cos(Phi).*sin(Theta))+...
    cos((3/2)*kd*cos(Phi).*sin(Theta))+...
    cos((1/2)*kd*cos(Phi).*sin(Theta))).^2;

ds=sin(theta).*(pi/theta_points).*(2*pi/phi_points);

Esum=sum(sum(E.*ds));

Emax=max(E(:));

D=4*pi*Emax/Esum;
