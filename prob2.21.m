kT = 0.0259;
ni = 1*10.^10;
NB = logspace(13,18);

EFid = kT.*log(NB./ni);     # ND >> NA  
EFia = -EFid;

semilogx(NB, EFid, NB, EFia);
axis([10.^13, 10.^18, -0.56, 0.56]);
grid;
xlabel('ND or NA');
ylabel('Ef-Ei');
