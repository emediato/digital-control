A = [1 0.0952; 0 0.905];
abs(eig(A))
B = [0.00484; 0.0952];    
C=[1 0]

%K = place(A,B,p)
%g = place(A',B,p).'

%controlabilidade
Cont=[B A*B]
M=ctrb(A,B)
% matrix of rank 1 and its inverse does not exist; hence the system is uncontrollable

%observabilidade
Obs2=[C*A]
Obsv=[C; Obs2]

OB=obsv(A,C)
