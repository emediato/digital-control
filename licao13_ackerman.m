%controle
A = [-1.2 1;0 -0.8];
b = [0.5;1];
delta=conv([1 -0.8],[1 -0.9]);
K=[0 1]*inv([b A*b])*polyvalm(delta, A);
Ka=acker(A,b,[0.8 0.9])


%observador
ct=[0.5 1]
delta=[1 -1 0.25]
G=polyvalm(delta, A)*inv([ct; ct*A]*[0; 1]);
G=acker(A' ,ct',[0.5 0.5])';
