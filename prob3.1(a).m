#   Graph of mobility vs doping concentration

# parameters

# For n-type
unmin=92;
un0=1268;
Ndref=1.3*(10.^17);
an=0.91;

# For p-type
upmin=54.3;
up0=406.9;
Naref=2.35*(10.^17);
ap=0.88;


# Calculation

N=logspace(14,19);
un=unmin + un0./((1+N/Ndref).^an);
up=upmin + up0./((1+N/Naref).^ap);


# Graph plotting

loglog(N,un,N,up);
grid;
axis([1.0e14 1.0e19 1.0e1 1.0e4]);
xlabel('ND or NA (/cm.^3)');
ylabel('Mobility (cm2/V-sec)');
text(1.0e15,1500,'Electrons');
text(1.0e16,400,'Holes');
text(1.0e18,4000,'Si,300K');