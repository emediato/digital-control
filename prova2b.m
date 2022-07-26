alfa = 0.33;
ta = 10; %tempo de acomodacao
Ts = 0.5; %tempo de amostragem

zeta = -log(alfa)/sqrt((pi^2)+log(alfa)^2) %amortecimento (cardioide)
%-log(.2)/sqrt(pi^2 + log(.2)^2)
wn = 4/(ta*zeta);
r = 2.71828^(-zeta*wn*Ts)
ze