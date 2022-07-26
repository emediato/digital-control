T=1; % tempo de amostragem
m=0.6; % parâmetro da transformada
a=0.2; % parâmetro do sinal em tempo contínuo
N=15; % número de iteradas a computar
% função de transferência em tempo contínuo
num=[a]; den=conv([1 0],[1 a]);
t=0:0.01:N*T; % vetor de tempo
% resposta ao degrau do sistema contínuo
y=step(num,den,t);% coeficientes das equacões de diferenças
A=1-exp(-a*m*T);
B=exp(-a*m*T)-exp(-a*T);
C=1+exp(-a*T);
D=exp(-a*T);
E=1-exp(-a*T);
% sinal de entrada:
u=ones(1,N);
%degrau unitário
% condicoes iniciais
x(1)=y(m*100+1);
x(2)=y((m+1)*100+1);
x2(1)=y(1);
x2(2)=y(101);
% simulação das equações de diferenças
for k=3:N+1
% da transformada Z modificada
x(k)=C*x(k-1)-D*x(k-2)+A*u(k-1)+B*u(k-2);
% da transformada Z clássica
x2(k)=C*x2(k-1)-D*x2(k-2)+E*u(k-1);
end
% vetor de tempo deslocado
Te=m*T:T:(m+N)*T;
% faz o gráfico
plot(t,y,'k',Te,x,'k+',0:N,x2,'k.','MarkerSize',10)
xlabel('tempo')
ylabel('x(nT) e x([nT+mT)')