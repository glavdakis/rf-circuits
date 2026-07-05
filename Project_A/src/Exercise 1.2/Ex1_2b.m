N = 201; 
f0 = 1e9; 
f = 0:(3*f0/N):(3*f0);
bl=0.125*2*pi*f/f0;
Z0=50;
Z1=98.45;
Z2=101.6;
Z3=43.6;
Zs1=-1j*(Z1*cot(bl));
Ys1=1./Zs1;
Y0=1./Z0;
Ya=Ys1+Y0;
Za=1./Ya;
Zb=Z2*(Za+1j*Z2*tan(bl))./(Z2+1j*Za.*tan(bl));
Zs2=-1j*(Z3*cot(bl));
Ys2=1./Zs2;
Yb=1./Zb;
Yc=Ys2+Yb;
Zc=1./Yc;
Zd=Z2*(Zc+1j*Z2*tan(bl))./(Z2+1j*Zc.*tan(bl));
Yd=1./Zd;
Yin=Yd+Ys1;
Zin=1./Yin;
Gamma=(Zin-Z0)./(Zin+Z0);
Gammadb=20 * log10(abs(Gamma));
Gammadb(Gammadb<=-60)=-60;
SWR=(1+abs(Gamma))./(1-abs(Gamma));
SWR(SWR>10)=10;

tiledlayout(2,1)
nexttile
plot(f,Gammadb);
xlabel('Frequency (Hz)');
ylabel('|Γ|(dB)');
title('|Γ| στην είσοδο σε dB συναρτήσει της συχνότητας');
grid on;

nexttile
plot(f,SWR);
xlabel('Frequency (Hz)');
ylabel('SWR');
title('SWR στην είσοδο συναρτήσει της συχνότητας');
grid on;




