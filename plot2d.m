function plot2d(t, x)

Wx = x(:,1);
Wy = x(:,2);
Wz = x(:,3);
    
    figure(1);
    hold on;
    
    plot(t,Wx,'g');
    plot(t,Wy,'b');
    plot(t,Wz,'r');
    title('Angular velocity components over time (numerical)' );
    xlabel('Time(s)');
    ylabel('Angular velocity (degrees/sec)');
    legend('Wx','Wy','Wz');
    
    hold off;


    figure(2);
    hold on;
    
    plot(t,x(:,4),'g');
    plot(t,x(:,5),'b');
    plot(t,x(:,6),'r');
    plot(t,x(:,7));

    title('quaternion');
    xlabel('Time');
    ylabel('q');
    
    hold off;