T= input('Enter the temperature (in K)=');
NA = input('Enter no. of acceptor elements =');
ND = input('Enter no. of donor elements =');
Nnet = ND - NA;
k=8.617*10.^-5;

# to find value of ni
E1 = 0.0074;
A= 2.510*10.^19;

# Band Gap vs T
a= 4.730*10.^-4;
b=636;
Eg0= 1.17;
Eg= Eg0 - a.*(T.^2)./(T+b);

# Effective mass ratio
# mnr= mn*/m0
# mpr= mp*/m0

mnr = 1.028 + (6.11*10.^-4).*T - (3.09*10.^-7).*T.^2;
mpr = 0.610 + (7.83*10.^-4).*T - (4.46*10.^-7).*T.^2;

# ni calculation -->
ni = A.*((T/300).^(1.5).*((mnr.*mpr).^(0.75)).*exp(-(Eg-E1)./(2.*k.*T));

# to find value of n, p , and Ef-Ei
if Nnet == 0;
  n= ni;
  p= ni;
  Efi=0;
elseif Nnet > 0;
  n = Nnet/2+sqrt((Nnet/2)^2+ni^2);
  p = ni^2/n;
  Efi=k*T*log(n/ni);
else
  p = Nnet/2+sqrt((Nnet/2)^2+ni^2);
  n = ni^2/p;
  Efi=-k*T*log(p/ni);   
end

# printing of results
format compact;
n
p
Efi