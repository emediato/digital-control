% matrizes do sistema contínuo
Ac=[0 1 0 0;0 -2 0 0;0 0 -5 5;0 0 0 -1];
Bc=[0 0;2 0;0 0 ;0 1];
Cc=[0 0 0 1;1 0 -1 0];
Dc=zeros(2,2);
T=0.1; % tempo de amostragem
Sysc=ss(Ac,Bc,Cc,Dc); % sistema em tempo contínuo
Sys=c2d(Sysc,T,'zoh'); % sistema em tempo discreto
A=Sys.a
B=Sys.b
C=Sys.c
D=Sys.d