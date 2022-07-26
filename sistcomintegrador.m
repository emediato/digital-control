A=-1+2*rand(3,3)
abs(eig(A))
B=[0;0;1]
C=[1 0 0]
%K=place(A,B,[.3 .4 .8])
K=place(A,B,[.9 .85 .8]) 
%+prox +rapido convergindo

abs(eig(A-B*K))
Ts=1e-3
N=.1