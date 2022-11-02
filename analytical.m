%% Plot of the analytical solution to torque free motion problem
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% tmax - max time (3 rotations in this case)
% t - time
% Wx, Wy, Wz - Analytically solved angular velocity components
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


tmax = 3*pi;
t = linspace(0,tmax,1000);

Wx = sin(6*t);
Wy = cos(6*t);
Wz = 3*ones(size(t));

figure(3);

hold on;

plot(t,Wx, '-b'); 
plot(t,Wy, '-r');
plot(t,Wz, '-g');

% xlim([0 tmax]);
% ylim([-90 90]);
title('Angular velocity components over time (analytical)' );
xlabel('Time(s)');
ylabel('Angular velocity (degrees/s)');
legend('Wx','Wy','Wz');

hold off;