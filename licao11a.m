Ac = [0 1; 0 -1];
Bc = [0; 10];
C = [1 0];
D = 0;
T = 0.1;
[A,B] = c2d(Ac,Bc,T)
[numz,denz] = ss2tf(A,B,C,D)
Gz = tf(numz,denz,T)