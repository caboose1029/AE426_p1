function dxdt = diffEq(t,s0)
    
    W = s0(1:3);
    Q = s0(4:7);

    dxdt(1) = 2*W(2)*W(3);
    dxdt(2) = -2*W(1)*W(3);
    dxdt(3) = 0;
    
    dxdt(4) = 0.5*((Q(2)*W(3))-(Q(3)*W(2))+Q(4)*W(1));
    dxdt(5) = 0.5*((Q(3)*W(1))-(Q(1)*W(3))+Q(4)*W(2));
    dxdt(6) = 0.5*((Q(1)*W(2))-(Q(2)*W(1))+Q(4)*W(3));
    dxdt(7) = -Q(1)*W(1)-Q(2)*W(2)-Q(3)*W(3);

    dxdt = dxdt';

end