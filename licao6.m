clear all
close all
clc

g = tf([1],[1 0.6])
k = 0.75
y = feedback(g*k,1)

t = linspace(0,10,100)

plot(t, step(y, t))
xlim([0 10])