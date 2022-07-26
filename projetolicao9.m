B=[0.002059 0.001686];
A=[1 -1.511 0.5488];

Gz=tf(B,A)
%discretizacao

zpk(Gz)

sisotool(Gz)
bode(Gz)