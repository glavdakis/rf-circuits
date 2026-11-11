N = 201; 
f0 = 1e9; 
f = 0:(2*f0/N):(2*f0);
Vsrms=1;
Zg=50-1j*40;
Rg=50;
Xg=-40;
Z0=50;
Zl=10+1j*15;

%i)Πυκνωτής στην είσοδο της γραμμής και παράλληλα
bli=0.041*2*pi*f/f0;
Zai=Z0*(Zl+1j*Z0*tan(bli))./(Z0+1j*Zl.*tan(bli));
Yai=1./Zai;
Yci=1j*2*pi*f*2.92845*1e-12;
Yini=Yai+Yci;
Zini=1./Yini;
Rini=real(Zini);
Xini=imag(Zini);
Pi=(Vsrms^2.*Rini)./((Rini+Rg).^2+(Xini+Xg).^2);
plot(f,Pi);
hold on

%ii)Πυκνωτής στην έξοδο της γραμμής και παράλληλα
blii=0.105*2*pi*f/f0;
Yl=1./Zl;
Ycii=1j*2*pi*f*4.71099*1e-12;
Yaii=Ycii+Yl;
Zaii=1./Yaii;
Zinii=Z0*(Zaii+1j*Z0*tan(blii))./(Z0+1j*Zaii.*tan(blii));
Rinii=real(Zinii);
Xinii=imag(Zinii);
Pii=(Vsrms^2.*Rinii)./((Rinii+Rg).^2+(Xinii+Xg).^2);
plot(f,Pii);

%iii)Πυκνωτής στην είσοδο της γραμμής και σε σειρά
bliii=0.138*2*pi*f/f0;
Zciii=(-1j)./(2*pi*f*2.84205*1e-12);
Zaiii=Z0*(Zl+1j*Z0*tan(bliii))./(Z0+1j*Zl*tan(bliii));
Ziniii=Zaiii+Zciii;
Riniii=real(Ziniii);
Xiniii=imag(Ziniii);
Piii=(Vsrms^2.*Riniii)./((Riniii+Rg).^2+(Xiniii+Xg).^2);
plot(f,Piii);

xlabel('Frequency (Hz)');
ylabel('Power (Watt)');
title('Ισχύς στο φορτίο συναρτήσει της συχνότητας');
legend({'i)Πυκνωτής στην είσοδο της γραμμής και παράλληλα ','ii)Πυκνωτής στην έξοδο της γραμμής και παράλληλα','iii)Πυκνωτής στην είσοδο της γραμμής και σε σειρά'},'Location','southeast')
grid on;
hold off;
