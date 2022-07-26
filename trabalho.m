%%
close all
clear
clc
T = 0.1;
G = tf(1.02,[1 2.55 0])
G1 = c2d(G,T,'tustin')
G2 = c2d(G,T,'zoh')
G3 = c2d(G,T,'matched')
figure(1)
hold on
bode(G,'k')
hold on
bode(G1)
hold on
bode(G2)
hold on
bode(G3)
legend('G','G1-tustin','G2-zoh','G3-matched')
print -dpng bodecomparation

%%
figure(2)
subplot(2,2,1)
rlocus(G)
legend('G')
subplot(2,2,2)
rlocus(G1)
legend('tustin')

subplot(2,2,3)
rlocus(G2)
legend('zoh')

subplot(2,2,4)
rlocus(G3)
legend('matched')
print -dpng rlocus