k=8.617*10.^-5;
T=300;
kT= k.*T;
E_Ec= linspace(0,0.4);
dist= 2*sqrt(E_Ec).*exp(-E_Ec/kT)/(sqrt(pi)*kT.^(1.5));
plot(dist,E_Ec)
xlabel('Normalized Distribution (1/eV)');
ylabel('E-Ec (eV)'); 
hold on
T=600;
kT= k.*T;
E_Ec= linspace(0,0.4);
dist1= 2*sqrt(E_Ec).*exp(-E_Ec/kT)/(sqrt(pi)*kT.^(1.5));
plot(dist1,E_Ec)
hold on
T=1200;
kT= k.*T;
E_Ec= linspace(0,0.4);
dist= 2*sqrt(E_Ec).*exp(-E_Ec/kT)/(sqrt(pi)*kT.^(1.5));
plot(dist,E_Ec)
hold on