N = 201; 
f0 = 1e9; 
f = 0:(4*f0/N):(4*f0); 
bl1=0.32*2*pi*f/f0;
bl2=0.24*2*pi*f/f0;
bl3=0.1*2*pi*f/f0;
Z0=50;
Zl=100;
Za=Z0*(Zl+1j*Z0*tan(bl1))./(Z0+1j*Zl*tan(bl1));
Z1=-1j*(7.957*1e10)./f;
Zb=Za+Z1;
Zc=Z0*(Zb+1j*Z0*tan(bl2))./(Z0+1j*Zb.*tan(bl2));
Zs=-1j*(Z0*cot(bl3));
Ys=1./Zs;
Yc=1./Zc;
Yin=Ys+Yc;
Zin=1./Yin;
Gamma=(Zin-Z0)./(Zin+Z0);
Gammaabs=abs(Gamma);
Gammadb=20 * log10(abs(Gamma));
Gammadb(Gammadb<=-60)=-60;

tiledlayout(2,1)
nexttile
plot(f,Gammaabs);
xlabel('Frequency (Hz)');
ylabel('|Γ|');
title('|Γ| στην είσοδο συναρτήσει της συχνότητας');
grid on;

nexttile
plot(f,Gammadb);
xlabel('Frequency (Hz)');
ylabel('|Γ|(dB)');
title('|Γ| σε dB στην είσοδο συναρτήσει της συχνότητας');
grid on;



