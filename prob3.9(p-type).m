#  Plotting of Resistivity vs T(K);

# Values at T=300K
upmin300=54.3;
up0300=406.9;
Naref300=2.35*(10.^17);
ap300=0.88;
T=100:1:600;
q=1.6e-19;

# Values at T(k)
upmin=upmin300*((T/300).^-0.57);
up0=up0300*((T/300).^-2.23);
Naref=Naref300*((T/300).^2.4);
ap=ap300*((T/300).^-0.146);

NA=1.0e14;
up=upmin + up0./((1+NA./Naref).^ap);
pn=1./(q*up*NA);
semilogy(T,pn);
axis([200 500 1.0e-2 1.0e3]);
xlabel('T (K)');
ylabel('p-type resistivity (ohm-cm)');
hold on

NA=1.0e16;
up=upmin + up0./((1+NA./Naref).^ap);
pn=1./(q*up*NA);
semilogy(T,pn);
axis([200 500 1.0e-2 1.0e3]);
hold on

NA=1.0e17;
up=upmin + up0./((1+NA./Naref).^ap);
pn=1./(q*up*NA);
semilogy(T,pn);
axis([200 500 1.0e-2 1.0e3]);
hold on

NA=1.0e18;
up=upmin + up0./((1+NA./Naref).^ap);
pn=1./(q*up*NA);
semilogy(T,pn);
axis([200 500 1.0e-2 1.0e3]);
legend('NA=1.0e14', 'NA=1.0e16', 'NA=1.0e17', 'NA=1.0e18');

text(400,700,'Silicon');