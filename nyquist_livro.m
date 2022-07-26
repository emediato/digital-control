num=[0.4 0.3];
den=conv([1 -1],[1 -0.4]);
T=1; % período de amostragem
sys=tf(num,den,T);
N=100;
% 100 valores de w entre 0,1 e pi
w=logspace(-1,pi,N);
% gera dados para o diagrama polar
[re,im]=nyquist(sys,w);
%Figura 5.17: Diagrama polar de