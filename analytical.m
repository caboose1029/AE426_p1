%% Plot of the analytical solution to torque free motion problem
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% tmax - max time (3 rotations in this case)
% t - time
% Wx, Wy, Wz - Analytically solved angular velocity components
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


tmax = 3*pi;
t = linspace(0,tmax,1000);

Wx = cos(2*t);
Wy = -sin(2*t);
Wz = 3*ones(size(t));

figure(3);

hold on;

plot(t,Wx*180/pi, '-b'); 
plot(t,Wy*180/pi, '-r');
plot(t,Wz*180/pi,'-g');

% xlim([0 tmax]);
% ylim([-90 90]);
title('Angular velocity components over time (analytical)' );
xlabel('Time(s)');
ylabel('Angular velocity (degrees/s)');
legend('Wx','Wy','Wz');

hold off;