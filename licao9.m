num=[1 .95]
dem=[1 -1]
Ts=0.05
G=tf(num, dem, Ts)
bode(G)
