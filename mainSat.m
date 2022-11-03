% Euler EOMs

clear; clc;

% Initial conditions
I = diag([100 100 300]);
%eDCMb = [1 0 0; 0 1 0; 0 0 1];
W0 = [0.1 0.1 3];
Q0 = [0 0 0 1];
%S0 = [0 0 0];
y0 = [W0 Q0];

% ODE45 setup variables and functions
T = 200;
tspan = linspace(0,T,1000);
tol = 1e-13;

options = odeset('RelTol', tol, 'AbsTol', tol);

% ODE45 call - Kinematic
[t,x] = ode45(@diffEq,tspan,y0,I,options);

% eDCMb = quat2dcm(x(4:7));

plot2d(t,x);