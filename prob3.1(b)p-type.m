#  Plotting of Mobility vs T(K);

# Values at T=300K
upmin300=54.3;
up0300=406.9;
Naref300=2.35*(10.^17);
ap300=0.88;
T=100:1:600;

# Values at T(k)
upmin=upmin300*((T/300).^-0.57);
up0=up0300*((T/300).^-2.23);
Naref=Naref300*((T/300).^2.4);
ap=ap300*((T/300).^-0.146);

NA=1.0e14;
up=upmin + up0./((1+NA./Naref).^ap);
plot(T,up);
axis([100 600 150 2000]);
xlabel('T (K)');
ylabel('up (cm2/V-sec)');
hold on

NA=1.0e16;
up=upmin + up0./((1+NA./Naref).^ap);
plot(T,up);
axis([100 600 150 2000]);
hold on

NA=1.0e17;
up=upmin + up0./((1+NA./Naref).^ap);
plot(T,up);
axis([100 600 150 2000]);
hold on

NA=1.0e18;
up=upmin + up0./((1+NA./Naref).^ap);
plot(T,up);
axis([100 600 150 2000]);
legend('ND=1.0e14', 'ND=1.0e16', 'ND=1.0e17', 'ND=1.0e18');

text(550,1400,'Si,T(k)');