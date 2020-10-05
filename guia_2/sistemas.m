% Demo para la introducción de la práctica nro 2: Sistemas
%
% Señales y Sistemas, Facultad de Ingeniería, Universidad de Buenos Aires 
% Autor: Humberto M. Torres
% hmtorres@conicet.gov.ar
% Agosto de 2018. Revisado Marzo 2019. Revisado Agosto 2019

n=-10:10;

x = zeros(size(n)); x(n>=0) = 1;
h = zeros(size(n)); h(n>=0) =0.5 .^ n(n>=0);

figure('Name','Convolución discreta')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(311)
stem(n,x,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('k')
ylabel('$x[k] = u[k]$','interpreter','latex')

subplot(312)
stem(n,h,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[k] = \alpha^k u[k]$','interpreter','latex')
pause

h = h(end:-1:1);
stem(n,h,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[-k]$','interpreter','latex')
title('Reflexi\`{o}n','interpreter','latex')
pause

stem(n(2:end)-2,h(2:end),'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[-2-k]$','interpreter','latex')
title('$n = -2$','interpreter','latex')
pause

stem(n,h,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[0-k]$','interpreter','latex')
title('$n = 0$','interpreter','latex')
pause

c = subplot(313);
stem(n(n<=0),[zeros(length(n(n<0)),1); 1],'LineWidth',2)
grid on
axis([-10 10 -0.1 2.1])
xlabel('$n$','interpreter','latex')
ylabel('$y[n]$','interpreter','latex')
title('$y[0]=x(0)h(0)$','interpreter','latex')
hold on
pause

for k=1:10
    subplot(312)
    stem(n(1:end-k)+k,h(1:end-k),'LineWidth',2)
    grid on
    axis([-10 10 -0.1 1.1])
    xlabel('k')
    ylabel(strcat('$h[$',int2str(k),'$-k]$'),'interpreter','latex')
    title(strcat('$n = $',int2str(k)),'interpreter','latex')
    pause(1)

    set(gcf,'CurrentAxes',c)
    stem(k,sum(0.5.^[0:k]),'LineWidth',2)
    a = strcat('y(',int2str(k),')=\sum_{k=0}^',int2str(k),' x(k)h(',int2str(k),'-k)');
    title(strcat('$',a,'$'),'interpreter','latex')   
    pause(3)
end;
%%
close all
clear all

n=-10:10;

x = zeros(size(n)); x(n>= -2 & n <= 2) = 1;
h = zeros(size(n)); h(n>=0 & n <= 3) =1;

figure('Name','Convolución discreta')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(311)
stem(n,x,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$x[k]$','interpreter','latex')

subplot(312)
stem(n,h,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[k]$','interpreter','latex')
pause

h = h(end:-1:1);
stem(n,h,'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[-k]$','interpreter','latex')
title('Reflexi\`{o}n','interpreter','latex')
pause

stem(n(4:end)-4,h(4:end),'LineWidth',2)
grid on
axis([-10 10 -0.1 1.1])
xlabel('$k$','interpreter','latex')
ylabel('$h[-4-k]$','interpreter','latex')
title('$n = -4$','interpreter','latex')
pause(2)

c = subplot(313);
stem(n(n<=-4),zeros(size(n(n<=-4))),'LineWidth',2)
grid on
axis([-10 10 -0.1 4.1])
xlabel('$n$','interpreter','latex')
ylabel('$y[n]$','interpreter','latex')
title('$n = -4$','interpreter','latex')
hold on
pause(3)

for k=-3:10
    subplot(312)
    stem(n+k,h,'LineWidth',2)
    grid on
    axis([-10 10 -0.1 1.1])
    xlabel('$k$','interpreter','latex')
    ylabel('$h[n-k]$','interpreter','latex')
    title(strcat('$n = $',int2str(k)),'interpreter','latex')
    pause(1)

    set(gcf,'CurrentAxes',c)
    if k<2
        stem(k,length([-2:k]),'LineWidth',2)
    elseif k == 2
        stem(k,4,'LineWidth',2)
    elseif k <= 5
        stem(k,4-k+2,'LineWidth',2)
    else
        stem(k,0,'LineWidth',2)
    end;
    title(strcat('$n = $',int2str(k)),'interpreter','latex')   
    pause(3)
end;
