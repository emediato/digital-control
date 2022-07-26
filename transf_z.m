T=0.1
num=[1 4 3]
dem=[1 6 8 0]
n=length(dem)
Es=tf(num, dem)
   [r, p, k] = residue(num, dem);
for i=1:1:n-1
    pz(i)=exp(p(i)*T);
end

    [numzz, demz]=residue(r, pz, k)
numz = conv(numzz,[1 0])
Ez=tf(numz, demz, T)

