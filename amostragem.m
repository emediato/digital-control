clear; %limpa todas as variáveis
close all; %fecha todas as figuras abertas
t=0:.005:1; %vector de tempo (incrementos de 0.005 seg)
f=10; %Hz
x=sin(2*pi*f*t);
%plotting
figure(1);
plot(t,x);
axis([0 1 -1.5 1.5]);
title('Sinal Contínuo');
xlabel('t');
ylabel('x(t)');

%plotting x(t) amostrado a 50Hz
fs1=50; %Hz

% se fs1=11 ocorre o aliasing
% o sinal original nao podera ser reconstruido a partir da sua versao
% digital devido a baixa frequencia, relativamente a do sinal orgiginal

t1=0:1/fs1:1; %vector de tempo (incrementos de 0.02 seg)
x1=sin(2*pi*f*t1);
figure(2);
%stem(t1,x1); %representa os valores da função x1 nos instantes t1
stairs(t1,x1,'k');

axis([0 1 -1.5 1.5]);
title('Sinal Amostrado a 50Hz');
xlabel('t');
ylabel('amplitude');

hold on; %adicionar gráficos sem alteração automática dos eixos
plot(t,x,'r:'); %sinal original, vermelho (r), tracejado (:)



