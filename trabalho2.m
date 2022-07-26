%%
close all
clear
clc
T = 0.2;
G = zpk(-0.24,[1 0.87],1,T)
coefmin = 0.6*(1-10/100)
raio = exp((-4.6/7))

rlocus(G);
zgrid(coefmin,[]);
hold on
%plotando circulo de tempo de acomodação
x = [-1:0.01:1 ];
y = sqrt ( raio - x.^2);
z = -y;
plot(x,y,'--k',x,z,'--k')
D = zpk(0.9,-0.18,1,T)
Gf  = D*G
rlocus(Gf)
[Kc1, raizes1] = rlocfind(Gf)
print -dpng rlocus-2
Ge = feedback(D*G*Kc1,1)
figure
step(Ge)
print -dpng stepresponse
figure
aux = zpk(0,1,0.01,T)
Ge = Ge*aux
step(Ge)
xlim([0,100])
hold on
step(aux)
legend('y','rampa')
print -dpng rampa
