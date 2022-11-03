% Euler EOMs

clear; clc;

% Initial conditions
I = diag([2 2 10]);
%eDCMb = [1 0 0; 0 1 0; 0 0 1];
W0 = [1 0 3];
Q0 = [0 0 0 1];
y0 = [W0 Q0 0 0 0];

% ODE45 setup variables and functions
T = 30;
tspan = linspace(0,T,1000);
tol = 1e-13;

options1 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event1);
options2 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event2);
options3 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event3);
options4 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event4);
options5 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event5);
options6 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event6);
options7 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event7);
options8 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event8);
options9 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event9);
options10 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event10);
options11 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event11);
options12 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event12);
options13 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event13);
options14 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event14);
options15 = odeset('RelTol', tol, 'AbsTol', tol, 'Events', @event15);


% ODE45 call
[t,x,t1,y1,i1] = ode45(@diffEq,tspan,y0,options1);

[t,x,t2,y2,i2] = ode45(@diffEq,tspan(t1:1000),y1,options2);

[t,x,t3,y3,i3] = ode45(@diffEq,tspan(t2:1000),y2,options3);

[t,x,t4,y4,i4] = ode45(@diffEq,tspan(t3:1000),y3,options4);

[t,x,t5,y5,i5] = ode45(@diffEq,tspan(t4:1000),y4,options5);

[t,x,t6,y6,i6] = ode45(@diffEq,tspan(t5:1000),y5,options6);

[t,x,t7,y7,i7] = ode45(@diffEq,tspan(t6:1000),y6,options7);

[t,x,t8,y8,i8] = ode45(@diffEq,tspan(t7:1000),y7,options8);

[t,x,t9,y9,i9] = ode45(@diffEq,tspan(t8:1000),y8,options9);

[t,x,t10,y10,i10] = ode45(@diffEq,tspan(t9:1000),y9,options10);

[t,x,t11,y11,i11] = ode45(@diffEq,tspan(t10:1000),y10,options11);

[t,x,t12,y12,i12] = ode45(@diffEq,tspan(t11:1000),y11,options12);

[t,x,t13,y13,i13] = ode45(@diffEq,tspan(12:1000),y12,options13);

[t,x,t14,y14,i14] = ode45(@diffEq,tspan(t13:1000),y13,options14);

[t,x,t15,y15,i15] = ode45(@diffEq,tspan(t14:1000),y14,options15);

answer = [y0; y1; y2; y3; y4; y5; y6; y7; y8; y9; y10; y11; y12; y13; y14];
qtoD = answer(:,4:7);
eDCMb = quat2dcm(qtoD);

a = atan(-eDCMb(3,1,:)./eDCMb(3,2,:))*180/pi;
b = acos(eDCMb(3,3,:))*180/pi;
g = atan(eDCMb(1,3,:)./eDCMb(2,3,:))*180/pi;



plot2d(t,x);

function [position,isterminal,direction] = event1(t,x)
  
  position = t-2 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event2(t,x)
  
  position = t-4 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event3(t,x)
  
  position = t-6 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event4(t,x)
  
  position = t-8 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end
function [position,isterminal,direction] = event5(t,x)
  
  position = t-10 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event6(t,x)
  
  position = t-12 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event7(t,x)
  
  position = t-14 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event8(t,x)
  
  position = t-16 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end
function [position,isterminal,direction] = event9(t,x)
  
  position = t-18 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event10(t,x)
  
  position = t-20 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event11(t,x)
  
  position = t-22 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event12(t,x)
  
  position = t-24 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end
function [position,isterminal,direction] = event13(t,x)
  
  position = t-26 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event14(t,x)
  
  position = t-28 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function [position,isterminal,direction] = event15(t,x)
  
  position = t-30 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end