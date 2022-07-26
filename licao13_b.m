T = 0.28;
A = [1 T; 0 1];
B = [0.5*T^2; T];    
p = [0.8+0.25*j 0.8-0.25*j ]

K = place(A,B,p)
g = place(A',B,p).'
