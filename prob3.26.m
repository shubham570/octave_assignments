# Given values
Eg=1.1;  # eg of silicon
kT=0.0259;
ni=1e10;

# taking input
ND=input('Give the value of ND in cm-3, ND = ');
pn0=input('Give the value of pn0 in cm-3, pn0 = ');

p0= ni.^2/ND;
t=log(100*pn0/p0);
z=linspace(0,t); 

# taking all energies related to Ev 
Ec=Eg/kT;
FN=Eg/(2*kT) + log(ND/ni);
FP=Eg/(2*kT) - log(p0/ni+(pn0/ni).*exp(-z));

# plotting
plot(z,FP);
axis([0,t,-5,45])
xlabel('x/LP');
ylabel('(E-Ev)/kT');
hold on

# now comparing with Ec and Ev
x=[0,t];
a1=[Ec,Ec];
a2=[FN,FN];
plot(x,a1,x,a2);
a3=[Ec/2,Ec/2];
a4=[0,0];
plot(x,a3,'--',x,a4,'y');

# labelling
u=t+0.2;
text(u,43.4,'Ec');
text(u,21,'Ei');
text(u/2,FN+1,'FN');
text(u/2,FP(50)-1,'FP');
text(u,0,'Ev');