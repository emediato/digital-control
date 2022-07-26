%% Questao 2

% (Adaptada do Enade 2019)
%
% Na indústria, diversos são os processos que têm seu comportamento descrito por um sistema de segunda ordem. Um determinado processo industrial é descrito pela equação de diferenças de segunda ordem mostrada a seguir:
%
% y_{k}=(\alpha+\beta)y_{k-1}-(\alpha\beta)y_{k-2}+u_{k-2}
%
% sendo \alpha=0,8 e \beta=0,2.
%
% Se y_k e u_k são sinais de saída e entrada, respectivamente, deste processo, o modelo em espaço de estados, na forma diagonal, é dado conforme:
%
% \vec{x}_{k+1}=\begin{bmatrix}\gamma & 0\\ 0& \beta\end{bmatrix}\vec{x}_k+\begin{bmatrix}\epsilon \\ \zeta\end{bmatrix}u_k
%
% y_k=\begin{bmatrix}1 & 1\end{bmatrix}\vec{x}_k
%
% Determine o valor de \zeta.
syms beta1 gamma zeta epsilon z;
alfa = 0.9;
beta = 0.2;
Gz = 1/(z^2 -z*(alfa+beta)+alfa*beta); %obtido na mao a partir da eq. de diferencas

C = [1 1];
A = [[gamma 0]; [0 beta1]]
B = [epsilon; zeta]
D = 0;
G = C*(inv(z*eye(2)- A)*B)
subs(G,{gamma, beta1},{alfa, beta})
% iguala -> encontra que z(epsilon+zeta)=0, entao epsilon+zeta=0
% logo -beta*epsilon - gamma*zeta =1, sendo gamma = alfa

eqs = [-beta*epsilon-alfa*zeta==1, epsilon+zeta==0];
res = solve(eqs,[epsilon zeta]);
res.zeta
res.epsilon
