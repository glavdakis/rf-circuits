function AvGamma=CalcAvGamma2(p)
d1 = p(1);
d2 = p(2);
d3 = p(3);
l1 = p(4);
l2 = p(5);
l3 = p(6);
Zl=120+1j*60;
Z0=50;
normf=linspace(0.01,2,200); 
bl1=2*pi*d1*normf;
bl2=2*pi*d2*normf;
bl3=2*pi*d3*normf;
bl4=2*pi*l1*normf;
bl5=2*pi*l2*normf;
bl6=2*pi*l3*normf;
Za=Z0*(Zl+1j*Z0*tan(bl1))./(Z0+1j*Zl.*tan(bl1));
Zs1=-1j*(Z0*cot(bl4));
Zs2=-1j*(Z0*cot(bl5));
Zs3=-1j*(Z0*cot(bl6));
Ys1=1./Zs1;
Ya=1./Za;
Yb=Ys1+Ya;
Zb=1./Yb;
Zc=Z0*(Zb+1j*Z0*tan(bl2))./(Z0+1j*Zb.*tan(bl2));
Yc=1./Zc;
Ys2=1./Zs2;
Yd=Yc+Ys2;
Zd=1./Yd;
Ze=Z0*(Zd+1j*Z0*tan(bl3))./(Z0+1j*Zd.*tan(bl3));
Ye=1./Ze;
Ys3=1./Zs3;
Yin=Ye+Ys3;
Zin=1./Yin;
Gamma=(Zin-Z0)./(Zin+Z0);
Gammaabs=abs(Gamma);
AvGamma=mean(Gammaabs);
end



