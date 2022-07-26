num = [1];
den = [1 -0.2];
T = 0.1;
G=tf(num, den)

Gz = c2d(G,T,'zoh')

%g = tf(num, den, T);
sisotool(Gz);
