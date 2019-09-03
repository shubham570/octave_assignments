#  Plotting of Resistivity vs T(K);

# Values at T=300K
unmin300=92;
un0300=1268;
Ndref300=1.3*(10.^17);
an300=0.91;
T=100:1:600;
q=1.6e-19;

# Values at T(k)
unmin=unmin300*((T/300).^-0.57);
un0=un0300*((T/300).^-2.33);
Ndref=Ndref300*((T/300).^2.4);
an=an300*((T/300).^-0.146);
pn=logspace(-2,3);

ND=1.0e14;
un=unmin + un0./((1+ND./Ndref).^an);
pn=1./(q*un*ND);
semilogy(T,pn);
axis([200 500 1.0e-2 1.0e3]);
xlabel('T (K)');
ylabel('n-type resistivity (ohm-cm)');
hold on

ND=1.0e16;
un=unmin + un0./((1+ND./Ndref).^an);
pn=1./(q*un*ND);
plot(T,pn);
axis([200 500 1.0e-2 1.0e3]);
hold on

ND=1.0e17;
un=unmin + un0./((1+ND./Ndref).^an);
pn=1./(q*un*ND);
plot(T,pn);
axis([200 500 1.0e-2 1.0e3]);
legend('ND=1.0e17');
hold on

ND=1.0e18;
un=unmin + un0./((1+ND./Ndref).^an);
plot(T,un);
axis([200 500 1.0e-2 1.0e3]);
legend('ND=1.0e14', 'ND=1.0e16', 'ND=1.0e17', 'ND=1.0e18');

text(400,700,'Silicon');