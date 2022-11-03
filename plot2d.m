 function plot2d(t, x)

Wx = x(:,1);
Wy = x(:,2);
Wz = x(:,3);
    
    figure(1);
    hold on;
    
    plot(t,Wx*180/pi,'g');
    plot(t,Wy*180/pi,'b');
    plot(t,Wz*180/pi,'r');
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
    title('Quaternion components over time (numerical)')

    xlabel('Time(s)');
    ylabel('Quaternion');
    legend('q_1','q_2','q_3','q_4');
    
    hold off;