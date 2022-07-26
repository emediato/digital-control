num=[exp(-1.12)];
den=[1 4 5 2];
T=1.5; % período de amostragem
sys=tf(num,den,T);
N=100;
% 100 valores de w entre 0,1 e pi
w=logspace(-1,pi,N);
% gera dados para o diagrama polar
[re,im]=nyquist(sys,w);
%Figura 5.17: Diagrama polar de
grid
sisotool(sys)