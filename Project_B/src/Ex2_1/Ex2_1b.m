zin_1=4.9678+1j*43.9439;
h0=120*pi;
a=2.286*1e-2;
c=3*1e8;
l=0.06;
d=1.5*1e-3;
f=1e10;
fc=c/(2*a);
z0=h0/sqrt(1-(fc/f)^2);
b0=(2*pi*f/c)*sqrt(1-(fc/f)^2);
k=2*pi*f/c;
e_r=4.400000313451207 - 0.968000332987518i; 

za_1=(zin_1*z0-1j*z0^2*tan(b0*(l-d)))/(z0-1j*zin_1*tan(b0*(l-d)));
y=(-1j*c*za_1)/(2*pi*h0*f*d);
i=(2*pi*f/c)*sqrt(e_r-(fc/f)^2);

f=@(x)tan(x)/x-y;
x=fsolve(f, i);


