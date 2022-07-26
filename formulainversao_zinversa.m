% inversao

k=0;
y0=-((-1)^k)/2+1/2
for k=1:4
    y(k)=-((-1)^k)/2+1/2
end

[y0 y]

num=1;
den=[1 1];
y1=dstep(1, den, 5)'