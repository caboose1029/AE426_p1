% Euler EOMs

clear; clc;

% Initial conditions
I = diag([2 2 10]);
%eDCMb = [1 0 0; 0 1 0; 0 0 1];
W0 = [1 0 3];
Q0 = [0 0 0 1];
y0 = [W0 Q0];

% ODE45 setup variables and functions
T = 3*pi;
tspan = linspace(0,T,1000);
tol = 1e-13;

options = odeset('RelTol', tol, 'AbsTol', tol);

% ODE45 call - Kinematic
[t,x] = ode45(@diffEq,tspan,y0,options);

plot2d(t,x);