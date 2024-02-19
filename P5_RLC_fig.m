% Condiciones iniciales
x0 = [0; 0]; % [Q(0); I(0)]
% Resolver las ecuaciones diferenciales
[t,x] = ode45(@P5_RLC, [0 0.005], x0);
% Calcular el voltaje del capacitor
C = 0.1e-6; % Capacitancia (F)
Vc = x(:,1)/C;

% Graficar el voltaje del capacitor
figure;
plot(t, Vc);
xlabel('Tiempo (s)');
ylabel('Voltaje del condensador (V)');