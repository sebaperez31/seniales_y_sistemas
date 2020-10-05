% Demo para la introducción de la práctica nro 1: Señales
%
% Señales y Sistemas, Facultad de Ingeniería, Universidad de Buenos Aires 
% Autor: Humberto M. Torres
% hmtorres@conicet.gov.ar
% Agosto de 2018. Revisado Marzo 2019. Revisado Agosto 2019

%% Ejercico 1.e

% n = 0:11;
% u = zeros( size(n) );
% u(n>1) = 1;
% x = cos(pi * n / 3) .* u;
% stem(n, x)
% axis( [-1 12 -1.1 1.1] )
% grid on
% box on
% xlabel('n', 'interpreter', 'latex')
% ylabel('x(n) = cos(pi n/3) u(n-2)', 'interpreter', 'latex')
% title('TP 1; Ej. 1.e', 'interpreter', 'latex')

%% Ejercicio 2.d

% sum(exp(i * pi * [0:9]/2))
% 
% n = 0 : 1 / 1000 : 2 * pi;
% x = exp(i * n);
% plot(real(x), imag(x),'b', real( exp( i * [0 pi/2 pi 3*pi/2] ) ), imag( exp( i * [0 pi/2 pi 3*pi/2] ) ),'ro')
% axis( [-1.1 1.1 -1.1 1.1] )
% grid on
% box on
% title('TP 1; Ej. 2.a;    $x(n) = e^{(i \frac{\pi}{2} n)}$', 'interpreter', 'latex','FontSize',14)
% text(0.6, 0.05, 'n = {0, 4, 8};', 'interpreter', 'latex', 'color',' r')
% text(-0.18, 0.9, 'n = \{1, 5, 9\};','interpreter','latex','color', 'r')
% text(-0.9, 0.05, 'n = \{2, 6\};', 'interpreter', 'latex', 'color', 'r')
% text(-0.15, -0.9, 'n = \{3, 7\};', 'interpreter', 'latex', 'color', 'r')
% ylabel('$ Imag( x(n)$', 'interpreter', 'latex')
% xlabel('$ Real( x(n)$', 'interpreter', 'latex')

%%
t=-5:0.001:5;
x=zeros(size(t));
xx=linspace(0,1,length(x(t>=-3 & t<=-2)));
x(t>=-3 & t<=-2) = xx;
x(t>=-2 & t<=-1) = xx(end:-1:1);

x(t>=3 & t<=4) = 1;

figure('Name','Reflexión')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
plot(t,x,'LineWidth',2)
grid on
axis([-5 5 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('x(t)', 'interpreter', 'latex','FontSize',14)
title('Se\~{n}al original', 'interpreter', 'latex','FontSize',14)

text(6,1.5,'$x(t)\rightarrow x(-t)$', 'interpreter', 'latex','FontSize',14, 'color','blue')

pause
%peli = getframe(gcf);

subplot(212)

plot(t,x,'LineWidth',2)
grid on
axis([-5 5 -0.2 1.2])
az = 0;
el = 90;
pause
%peli(end+1) = getframe(gcf);
for n=1:18
    az = az - 10;
    el = el - 10;
    view(az,el)
    pause(0.5)
    %peli(end+1) = getframe(gcf);
end;

subplot(212)
plot(t,x(end:-1:1),'LineWidth',2)
grid on
axis([-5 5 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('x(-t)', 'interpreter', 'latex','FontSize',14)
title('Se\~{n}al reflejada', 'interpreter', 'latex','FontSize',14)
pause
close all
%peli(end+1) = getframe(gcf);
% v = VideoWriter('reflexion.avi');
% v.FrameRate=1;
% open(v)
% writeVideo(v,peli)
% close(v)
%%
close all
figure('Name','Desplazamiento')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
plot(t,x,'LineWidth',2)
grid on
axis([-7 7 -0.2 1.2])
xlabel('t')
ylabel('x(t)')
title('Se\~{n}al original', 'interpreter', 'latex','FontSize',14)

text(-10,1.5,'$x(t)\rightarrow x(t-2)$', 'interpreter', 'latex','FontSize',14, 'color','blue')

pause
%peli = getframe(gcf);

subplot(212)

plot(t,x,'LineWidth',2)
grid on
axis([-7 7 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)

pause
%peli(end+1) = getframe(gcf);
for n=0:0.1:2
    plot(t+n,x,'LineWidth',2)
    grid on
    axis([-7 7 -0.2 1.2])
    xlabel('t', 'interpreter', 'latex','FontSize',14)
    pause(0.1)
    %peli(end+1) = getframe(gcf);
end;
ylabel('x(t-2)', 'interpreter', 'latex','FontSize',14)
title('Se\~{n}al desplazada', 'interpreter', 'latex','FontSize',14)

pause
% peli(end+1) = getframe(gcf);
% v = VideoWriter('desplazamiento.avi');
% v.FrameRate=1;
% open(v)
% writeVideo(v,peli)
% close(v)
close all

%%

figure('Name','Cambio de escala')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(311)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('x(t)', 'interpreter', 'latex','FontSize',14)
title('Se\~{n}al original', 'interpreter', 'latex','FontSize',14)

text(-10,1.5,'$x(t)\rightarrow x(\alpha t)$', 'interpreter', 'latex','FontSize',14, 'color','blue')

pause
%peli = getframe(gcf);

subplot(312)

plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
title('$x(\alpha t);  \alpha > 1$', 'interpreter', 'latex','FontSize',14)
pause
%peli(end+1) = getframe(gcf);
for n=1.1:0.1:2
    plot(t/n,x,'LineWidth',2)
    grid on
    axis([-7 7 -0.2 1.2])
    xlabel('t', 'interpreter', 'latex','FontSize',14)
    pause(0.1)
    %peli(end+1) = getframe(gcf);
end;
ylabel('x(2t)', 'interpreter', 'latex','FontSize',14)
title('$x(\alpha t);  \alpha = 2 > 1$', 'interpreter', 'latex','FontSize',14)

%peli(end+1) = getframe(gcf);
pause

subplot(313)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
title('$x(\alpha t);  \alpha < 1$', 'interpreter', 'latex', 'FontSize',14)
pause
%peli(end+1) = getframe(gcf);

for n=1.1:0.1:2
    plot(t*n,x,'LineWidth',2)
    grid on
    axis([-9 9 -0.2 1.2])
    xlabel('t', 'interpreter', 'latex', 'FontSize',14)
    pause(0.1)
    %peli(end+1) = getframe(gcf);
end;
ylabel('x(t/2)')
title('$x(\alpha t);  \alpha = 0.5 < 1$', 'interpreter', 'latex','FontSize',14)
pause
% peli(end+1) = getframe(gcf);
% v = VideoWriter('escalamiento.avi');
% v.FrameRate=1;
% open(v)
% writeVideo(v,peli)
% close(v)
close all

%%

t=-5:0.001:5;
x=zeros(size(t));
xx=linspace(0,1,length(x(t>=-3 & t<=-2)));
x(t>=-3 & t<=-2) = xx;
x(t>=-2 & t<=-1) = xx(end:-1:1);

x(t>=3 & t<=4) = 1;

figure('Name','x(1-t/2)')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);

subplot(411)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('x(t)', 'interpreter', 'latex','FontSize',14)
title('Se\~{n}al original', 'interpreter', 'latex','FontSize',14)

text(-10,1.5,'$x(t)\rightarrow x(1-\frac{t}{2})$', 'interpreter', 'latex','FontSize',14, 'color','blue')

pause

x = x(end:-1:1);
subplot(412)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('x(-t)', 'interpreter', 'latex','FontSize',14)
title('Paso 1: reflejo', 'interpreter', 'latex','FontSize',14)

pause

t=t+1;
subplot(413)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t')
ylabel('x(1-t)', 'interpreter', 'latex','FontSize',14)
title('Paso 2: desplazamiento', 'interpreter', 'latex','FontSize',14)

pause

t=t*2;
subplot(414)
plot(t,x,'LineWidth',2)
grid on
axis([-9 9 -0.2 1.2])
xlabel('t', 'interpreter', 'latex','FontSize',14)
ylabel('$x(1-\frac{t}{2})$', 'interpreter', 'latex','FontSize',14)
title('Paso 3: escalado', 'interpreter', 'latex','FontSize',14)

pause
close all

%%

[x,fs] = wavread('hh1.WAV');
n1 = round(0.7791 * fs);
n2 = round(0.7839 * fs);
t1 = (0:length(x(n1:n2))-1)/fs;

figure('Name','Perodicidad x(t)=x(t+T)')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
axis([0 t1(end)*3 -1 1])
xlabel('$t$', 'interpreter', 'latex','FontSize',14)
ylabel('$x(t)$','interpreter', 'latex','FontSize',14)
title('$\exists T\in \Re: x(t)=x(t+T)$', 'interpreter', 'latex','FontSize',14)
grid on
hold on
plot(t1,x(n1:n2),'b','LineWidth',2)
annotation('textarrow', [0.26 0.24], [0.86 0.83],'String','Ciclo');
annotation('doublearrow', [0.13 0.38], [0.53 0.53]);
text(0.00025, -1.2, '$T = Per\acute{\imath}odo = \frac{1}{F0}$', 'interpreter', 'latex','FontSize',14);
text(0.00025, -1.4, '$ F0 = Frecuencia fundamental$', 'interpreter', 'latex','FontSize',14);
%pause(3)
plot(t1+t1(end),x(n1:n2),'r--','LineWidth',2)
%pause(3)
plot(t1+2*t1(end),x(n1:n2),'g--','LineWidth',2)
box on

%pause
n3 = round(0.7885 * fs);
n4 = round(0.7932 * fs);
t = (0:length(x(n1:n4))-1)/fs;
m2 = n2 - n1 + 1;
m3 = m2 + n3 - n2; 
subplot(212)
axis([0 t(end) -1 1])
grid on

hold on
%plot(t1,x(n1:n2),'k--','LineWidth',2)
plot(t1+t1(end),x(n1:n2),'r--','LineWidth',2)
plot(t1+2*t1(end),x(n1:n2),'g--','LineWidth',2)
plot(t(1:m2),x(n1:n2),'b','LineWidth',2)
plot(t(m2 + 1 : m3),x(n2+1:n3),'k','LineWidth',2)
plot(t(m3 + 1 : end),x(n3+1:n4),'k','LineWidth',2)
xlabel('$t$', 'interpreter', 'latex','FontSize',14)
box on
pause
close all

%%

[x,fs] = wavread('hh1.WAV');
n1 = round(0.7791 * fs);
n2 = round(0.7839 * fs);
t1 = (0:length(x(n1:n2))-1)/fs;

figure('Name','Perodicidad x(n)=x(n+N)')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
axis([0 t1(end)*3 -1 1])
xlabel('$n$','interpreter', 'latex','FontSize',14)
ylabel('$x(n)$','interpreter', 'latex','FontSize',14)
title('$x(n)=x(n+N)$','interpreter', 'latex','FontSize',14)
grid on
hold on
plot(t1,x(n1:n2),'bo','LineWidth',2)
annotation('textarrow', [0.26 0.24], [0.86 0.83],'String','Ciclo');
annotation('doublearrow', [0.13 0.38], [0.53 0.53]);
text(0.001, -1.2, '$N = Per\acute{i}odo = \frac{1}{Frecuencia fundamental}$','interpreter', 'latex','FontSize',14);
pause(3)
plot(t1+t1(end),x(n1:n2),'ro','LineWidth',2)
%axis([0 t1(end)*3 -1 1])
pause(3)
plot(t1+2*t1(end),x(n1:n2),'go','LineWidth',2)

pause
n3 = round(0.7885 * fs);
n4 = round(0.7932 * fs);
t = (0:length(x(n1:n4))-1)/fs;
m2 = n2 - n1 + 1;
m3 = m2 + n3 - n2; 
subplot(212)
axis([0 t(end) -1 1])
grid on
hold on
plot(t1,x(n1:n2),'kx','LineWidth',2)
plot(t1+t1(end),x(n1:n2),'kx','LineWidth',2)
plot(t1+2*t1(end),x(n1:n2),'kx','LineWidth',2)
plot(t(1:m2),x(n1:n2),'bo','LineWidth',2)
plot(t(m2 + 1 : m3),x(n2+1:n3),'ro','LineWidth',2)
plot(t(m3 + 1 : end),x(n3+1:n4),'go','LineWidth',2)
xlabel('n','interpreter', 'latex','FontSize',14)

pause
close all

%%

n = -5:5;
x1 = zeros(size(n));
x1(n>=-2 & n <= 2) = 1;

x2 = zeros(size(n));
x2(n>=-2 & n < 0) = -1;
x2(n>0 & n <=2 ) = 1;

figure('Name','Simetría par e impar')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);
subplot(211)
stem(n,x1,'LineWidth',2)
grid on
xlabel('$n$', 'interpreter', 'latex','FontSize',14)
ylabel('$x(n)$', 'interpreter', 'latex','FontSize',14)
title('$Simetr\acute{\imath}a \;  par: x(n) = x(-n)$', 'interpreter', 'latex','FontSize',14)
axis([-5.1 5.1 -1.1 1.1])
subplot(212)
stem(n,x2,'LineWidth',2)
grid on
xlabel('$n$', 'interpreter', 'latex','FontSize',14)
ylabel('$x(n)$', 'interpreter', 'latex','FontSize',14)
title('$Simetr\acute{\imath}a \; impar: x(n) = -x(-n)$', 'interpreter', 'latex','FontSize',14)
axis([-5.1 5.1 -1.1 1.1])

pause
close all

%%

t=-5:0.001:5;
x=zeros(size(t));
xx=linspace(0,1,length(x(t>=-3 & t<=-2)));
x(t>=-3 & t<=-2) = xx;
x(t>=-2 & t<=-1) = xx(end:-1:1);
x(t>=3 & t<=4) = 1;

xp = x/2 + x(end:-1:1)/2;
xi = x/2 - x(end:-1:1)/2;

figure('Name','Descomposición en par e impar')
set(gcf,'units','normalized','outerposition',[0 0 1 1]);

subplot(311)
plot(t,x,'LineWidth',2)
grid on
%xlabel('$t$', 'interpreter', 'latex','FontSize',14)
ylabel('$x(t)$', 'interpreter', 'latex','FontSize',14)
title('$x(t) = x_p(t) + x_i(t)$', 'interpreter', 'latex','FontSize',14)
axis([-5 5 -0.6 1.1])

pause
subplot(312)
grid on
%xlabel('$t$', 'interpreter', 'latex','FontSize',14)
ylabel('$x_p(t)$', 'interpreter', 'latex','FontSize',14)
title('$x_p(t) = \frac{ x(t)}{2} + \frac{x(-t)}{2}$', 'interpreter', 'latex','FontSize',14)
box on
axis([-5 5 -0.6 1.1])
hold on

plot(t,xp,'LineWidth',2)
pause(3)
plot(t(x>0),x(x>0)/2,'go')
pause(3)
xx = x(end:-1:1);
plot(t(xx>0),xx(xx>0)/2,'ro')
pause

subplot(313)
grid on
xlabel('$t$', 'interpreter', 'latex','FontSize',14)
ylabel('$x_i(t)$', 'interpreter', 'latex','FontSize',14)
title('$x_i(t) = \frac{x(t)}{2} - \frac{x(-t)}{2}$', 'interpreter', 'latex','FontSize',14)
axis([-5 5 -0.6 1.1])
box on
hold on

plot(t,xi,'LineWidth',2)
pause(3)
plot(t(x>0),x(x>0)/2,'go')
pause(3)
plot(t(xx>0),-xx(xx>0)/2,'ro')

pause
close all