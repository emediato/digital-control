num=0.4*[1 0.75]
den=conv([1 -0.4], [1 1])

%sistema discreto T=1
sys=tf(num, den, 1)
rlocus(sys) % func que traca lugar das raizes

%define limite dos eixos
axis([2.5 1.2 -1.5 1.5])
%aparencia cxircular
axis equal