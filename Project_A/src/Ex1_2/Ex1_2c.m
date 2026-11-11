N = 201; 
f0 = 1e9; 
f = 0:(2*f0/N):(2*f0);
bl1=(21.903*pi*f)/(180*f0);
bl2=(31.426*pi*f)/(180*f0);
bl3=(37.72*pi*f)/(180*f0);
Z0=50;
Zh=150;
Zl=20;
Za=Zh*(Z0+1j*Zh*tan(bl1))./(Zh+1j*Z0.*tan(bl1));
Zb=Zl*(Za+1j*Zl*tan(bl2))./(Zl+1j*Za.*tan(bl2));
Zc=Zh*(Zb+1j*Zh*tan(bl3))./(Zh+1j*Zb.*tan(bl3));
Zd=Zl*(Zc+1j*Zl*tan(bl2))./(Zl+1j*Zc.*tan(bl2));
Zin=Zh*(Zd+1j*Zh*tan(bl1))./(Zh+1j*Zd.*tan(bl1));
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
title('SWR στην είσοδο συναρτήσει τη συχνότητας');
grid on;




