# taking values

T=150:10:290;
un=[6757 5910 5216 4619 4209 3743 3306 2978 2675 2415 2185 1985 1805 1646 1501];

# taking log of values
u=log(T);
v=log(un);

# Fitting this in equation
x=polyfit(u,v,1);  # v=x(1)+x(2)*u
a=x(1);
b=-x(2);   # log(un)=-b*log(T)+a

T1=120:10:350;
y1=exp(a).*(T1.^(-b));


# Plotting
loglog(T,un, 'o', T1, y1);
grid;
axis([100,1000,1000,10000]);
xlabel('T(K)');
ylabel('Electron mobility (cm2/V-sec)');

text(600, 7500,'ND < 1.0e14/cm3');
text(720, 8200, 'Si');