num = [1]; den = [1 1 0]; Gs = tf(num,den); T=1;

Gz=c2d(Gs,T); %Assumes a zero-order hold
margin(Gz) % bode 


num = [1]; den = [1 1 0]; Gp = tf(num,den);
T1 = 1; Gz1=c2d(Gp,T1); [Gm1,Pm1] = margin(Gz1);
Cz1 = feedback(Gz1,1);


T2 = 0.1; Gz2 = c2d(Gp,T2); [Gm2,Pm2] = margin(Gz2);
Cz2 = feedback(Gz2,1);

% 
%Plot the closed-loop frequency
% Note that the frequency response for the T = 1 s 
% case has a peak of 6.06 dB at 0.87 rad/s; 
% for T = 0.1 s, the peak is 1.56 dB at 0.74 rad/s. 
% A more pronounced resonance in the
% closed-loop frequency response generally indicates 
%more overshoot in the step response response
figure(1), bode(Cz1,'--k',Cz2,'-k'), axis([0.25 2.5 -225 10]), grid
%Plot the step response
figure(2), step(Cz1,'--k',Cz2,'-k'), axis([0 20 0 1.5]), grid
%List the step response and margin parameters
StepT1=stepinfo(Cz1),Pm1,Gm1=20*log10(Gm1)%Convert to dB
StepT2=stepinfo(Cz2),Pm2,Gm2=20*log10(Gm2)%Convert to dB


