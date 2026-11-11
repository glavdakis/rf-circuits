zin_1=4.9678+1j*43.9439;
zin_2=108.5347+1j*202.0158;
a=2.286*1e-2;
h0=120*pi;
c=3*1e8;
l=0.06;
d=1.5*1e-3;
f=1e10;

fc=c/(2*a);
z0=h0/sqrt(1-(fc/f)^2);
b0=(2*pi*f/c)*sqrt(1-(fc/f)^2);
k=2*pi*f/c;
n=0;

za_1=(zin_1*z0-1j*z0^2*tan(b0*(l-d)))/(z0-1j*zin_1*tan(b0*(l-d)));
za_2=(zin_2*z0-1j*z0^2*tan(b0*(l-2*d)))/(z0-1j*zin_2*tan(b0*(l-2*d)));

b=za_1/za_2;

x=atanh(sqrt(2*b-1))+1j*n*pi;

gamma=x/(1j*d);

er=(gamma^2)/(k^2)+(fc/f)^2;