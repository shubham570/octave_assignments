Eg0 = 1.170;       # Band Gap Energy at T=0K
T = 0:1:600;
a = 4.730*10.^-4;     # constant alpha
b = 636;              # constant beta
EgT = Eg0 - (a*T.^2)./(T+b) ;
plot(T,EgT);
xlabel("T -->");
ylabel("Eg{T) -->");
hold on     # to plot linear computation  
Eg0 = 1.205;
a = 2.8*10.^-4;
EgT = Eg0 - a*T;
plot(T,EgT, 'r--')    # to plot in dotted lines