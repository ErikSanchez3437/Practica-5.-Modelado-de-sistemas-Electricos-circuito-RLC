%Erik Sánchez 222834371
function dx=P5_RLC(t,x)   
% Parámetros del circuito
R = 100; % Resistencia (ohms)
L = 6e-3; % Inductancia (H)
C = 0.1e-6; % Capacitancia (F)
V= 6*(1+square(2*pi*(1/2e-3)*t,50)); % Voltaje de entrada (V)

Q = x(1); %Carga del capacitor
I = x(2); %Corriente (dQ/dt)

% Definir la función de las ecuaciones diferenciales
dx=zeros(2,1);
dx(1:2)=[I; (V - R*I - Q/C)/L];