% Limpiar espacio de trabajo
clc; clear; close all;

% Para cada ejercicio, definimos un vector con los valores de n de cada señal
% Entonces tendremos un vector nx que contendra los valores de n de la señal x,
% un vector nh que contendra los valores de n de la señal h,
% y un vector ny que contendra los valores de n de la convolucion
% En el caso de ny tendremos que calcular su valor
% La longitud del vector ny sera la misma que la de la señal y
% Solo hay que calcular donde comienza la convolucion, es decir el primer valor de ny
% Se puede calcular sumando los primeros valores de nx y nh

%EJERCICIO A
nx1 = 0:20;
x1 = (2 * sin((2 * pi / 6) * nx1 + 1) + 5 * cos((2 * pi / 20) * nx1));
nh1 = [-1];
h1 = [2];

% Calculo de la convolucion
octave_conv1 = conv(x1, h1);
y1 = Ceballos_Moreno_Suarez_3k1_Function(x1, h1);
% Calculo de n para la convolucion
comienzo_y1 = nx1(1) + nh1(1);
ny1 = comienzo_y1:(comienzo_y1+length(y1)-1);

% Graficamos las señales
figure();

subplot(4, 1, 1);
stem(nx1, x1, 'r', 'filled');
title('Señal x[n] = (2 * sin((2 * pi / 6) * n + 1) + 5 * cos((2 * pi / 20) * n))');
xlabel('n');
ylabel('x[n]');

subplot(4, 1, 2);
stem(nh1, h1, 'b', 'filled');
title('Señal h[n] = 2 * n [u[n – 1] – u [n + 1]]');
xlabel('n');
ylabel('h[n]');

subplot(4, 1, 3);
stem(ny1, octave_conv1, 'g', 'LineWidth', 2);
title('Convolución en Octave');
xlabel('n');
ylabel('Resultado');

subplot(4, 1, 4);
stem(ny1, y1, 'm', 'LineWidth', 2);
title('Convolución personalizada');
xlabel('n');
ylabel('Resultado');


%EJERCICIO B
nx2 = 0:20;
x2 = 3 * exp(-2 * nx2);
nh2 = 0:20;
h2 = 3 * exp(-5 * nh2);

octave_conv2 = conv(x2, h2);
y2 = Ceballos_Moreno_Suarez_3k1_Function(x2, h2);
% Calculo de n para la convolucion
comienzo_y2 = nx2(1) + nh2(1);
ny2 = comienzo_y2:(comienzo_y2+length(y2)-1);

% Graficamos las señales
figure();
subplot(4, 1, 1);
stem(nx2, x2, 'r', 'filled');
title('Señal x[n] = 3 * exp(-2 * n)');
xlabel('n');
ylabel('x[n]');

subplot(4, 1, 2);
stem(nh2, h2, 'b', 'filled');
title('Señal h2[n] = 3 * exp(-5 * n)');
xlabel('n');
ylabel('h[n]');

subplot(4, 1, 3);
stem(ny2, octave_conv2, 'g', 'LineWidth', 2);
title('Convolución en Octave');
xlabel('n');
ylabel('Resultado');

subplot(4, 1, 4);
stem(ny2, y2, 'm', 'LineWidth', 2);
title('Convolución personalizada');
xlabel('n');
ylabel('Resultado');


%EJERCICIO C
nx3 = 0:20;
x3 = 5 * nx2;
nh3 = [-2];
h3 = [1];

octave_conv3 = conv(x3, h3);
y3 = Ceballos_Moreno_Suarez_3k1_Function(x3, h3);
% Calculo de n para la convolucion
comienzo_y3 = nx3(1) + nh3(1);
ny3 = comienzo_y3:(comienzo_y3+length(y3)-1);

% Graficamos las señales
figure();
subplot(4, 1, 1);
stem(nx3, x3, 'r', 'filled');
title('Señal x[n] = 5 * n');
xlabel('n');
ylabel('x[n]');

subplot(4, 1, 2);
stem(nh3, h3, 'b', 'filled');
title('Señal h2[n] = d[n+2]');
xlabel('n');
ylabel('h[n]');

subplot(4, 1, 3);
stem(ny3, octave_conv3, 'g', 'LineWidth', 2);
title('Convolución en Octave');
xlabel('n');
ylabel('Resultado');

subplot(4, 1, 4);
stem(ny3, y3, 'm', 'LineWidth', 2);
title('Convolución personalizada');
xlabel('n');
ylabel('Resultado');


%EJERCICIO D
nx4 = 0:20;
x4 = cos((2 * pi / 10) * nx4 + 2);
nh4 = -3:3;
h4 = 0.4 * ones(size(nh4));

octave_conv4 = conv(x4, h4);
y4 = Ceballos_Moreno_Suarez_3k1_Function(x4, h4);
% Calculo de n para la convolucion
comienzo_y4 = nx4(1) + nh4(1);
ny4 = comienzo_y4:(comienzo_y4+length(y4)-1);

% Graficamos las señales
figure();

subplot(4, 1, 1);
stem(nx4, x4, 'r', 'filled');
title('Señal x[n] = cos((2 * pi / 10) * n + 2);');
xlabel('n');
ylabel('x[n]');

subplot(4, 1, 2);
stem(nh4, h4, 'b', 'filled');
title('Señal h[n] = ∑[0,4δ(t-k)]');
xlabel('n');
ylabel('h[n]');

subplot(4, 1, 3);
stem(ny4, octave_conv4, 'g', 'LineWidth', 2);
title('Convolución en Octave');
xlabel('n');
ylabel('Resultado');

subplot(4, 1, 4);
stem(ny4, y4, 'm', 'LineWidth', 2);
title('Convolución personalizada');
xlabel('n');
ylabel('Resultado');
