f1=2.5*1e9;
f=2.4982*1e9;
l=32.88*1e-3;
er_eff=3.3301;
c=3*1e8;
a=1.911;
z0=50;

%first repetition
l1=l*(f/f1);
c1_1=2*pi*l1*sqrt(er_eff)/c;
c2=sqrt(a*c/(2*sqrt(er_eff)));
f2=fzero(@(f2)(tan(c1_1*f2)+sqrt(c2/f2)), f1);
beta_1=2*pi*f2*sqrt(er_eff)/c;
b_c1=-tan(beta_1*l1);
c_gap1=b_c1/(2*pi*f2*z0);

%second repetition
l2=l1*(f2/f1);
c1_2=2*pi*l2*sqrt(er_eff)/c;
f3=fzero(@(f2)(tan(c1_2*f2)+sqrt(c2/f2)), f1);
beta_2=2*pi*f3*sqrt(er_eff)/c;
b_c2=-tan(beta_2*l2);
c_gap2=b_c2/(2*pi*f3*z0);