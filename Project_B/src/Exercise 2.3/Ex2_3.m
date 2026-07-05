f0 = 5*1e9;
f=linspace(0,2*f0,201);
Z0=50;
Zl=20-1j*30;
Yl=1./Zl;
bl3=0.125*2*pi*f/f0;

%case i, small lengths
bl1_i=0.109*2*pi*f/f0;
bl2_i=0.185*2*pi*f/f0;
Zs1_i=-1j*Z0*cot(bl1_i);
Zs2_i=-1j*Z0*cot(bl2_i);
Ys1_i=1./Zs1_i;
Y1_i=Yl+Ys1_i;
Z1_i=1./Y1_i;
Z2_i=Z0*(Z1_i+1j*Z0*tan(bl3))./(Z0+1j*Z1_i.*tan(bl3));
Y2_i=1./Z2_i;
Ys2_i=1./Zs2_i;
Yin_i=Ys2_i+Y2_i;
Zin_i=1./Yin_i;
Gamma_i=(Zin_i-Z0)./(Zin_i+Z0);
Gammaabs_i=abs(Gamma_i);
plot(f,Gammaabs_i,"r");
hold on

%case ii, big lengths
bl1_ii=0.365*2*pi*f/f0;
bl2_ii=0.456*2*pi*f/f0;
Zs1_ii=-1j*Z0*cot(bl1_ii);
Zs2_ii=-1j*Z0*cot(bl2_ii);
Ys1_ii=1./Zs1_ii;
Y1_ii=Yl+Ys1_ii;
Z1_ii=1./Y1_ii;
Z2_ii=Z0*(Z1_ii+1j*Z0*tan(bl3))./(Z0+1j*Z1_ii.*tan(bl3));
Y2_ii=1./Z2_ii;
Ys2_ii=1./Zs2_ii;
Yin_ii=Ys2_ii+Y2_ii;
Zin_ii=1./Yin_ii;
Gamma_ii=(Zin_ii-Z0)./(Zin_ii+Z0);
Gammaabs_ii=abs(Gamma_ii);
plot(f,Gammaabs_ii,"b");

%|Γ| limit
yline(1/3,"--")

xlabel('Frequency (Hz)');
ylabel('|Γ|');
title('|Γ| στην είσοδο συναρτήσει της συχνότητας');
grid on;
hold off

%saveas(gcf,'Ex2_3.pdf');