z0=50;
er=4.4;
d=1.6*1e-3;
c=3*1e8;
f=2.5*1e9;
Q=25;

%design formulas
A=(z0/60)*sqrt((er+1)/2)+(er-1)/(er+1)*(0.23+0.11/er);
w=d*8*exp(A)/(exp(2*A)-2);
F=1/sqrt(1+12*d/w);
er_eff=(er+1)/2+(er-1)*F/2;
ell=c/(f*sqrt(er_eff));

%new fr
beta_0=2*pi*f*sqrt(er_eff)/c;
l=ell/2;
a=beta_0/(2*Q);

c1=2*pi*l*sqrt(er_eff)/c;
c2=sqrt(a*c/(2*sqrt(er_eff)));
x=fzero(@(x)(tan(c1*x)+sqrt(c2/x)), f);

%capacity
beta_1=2*pi*x*sqrt(er_eff)/c;
b_c=-tan(beta_1*l);
c_gap=b_c/(2*pi*x*z0);
