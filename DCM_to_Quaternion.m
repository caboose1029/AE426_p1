function Q = DCM_to_Quaternion(DCM)
 
    C11 = DCM(1,1);
    C12 = DCM(1,2);
    C13 = DCM(1,3);
 
    C21 = DCM(2,1);
    C22 = DCM(2,2);
    C23 = DCM(2,3);
    
    C31 = DCM(3,1);
    C32 = DCM(3,2);
    C33 = DCM(3,3);
    
    q4 = .5*sqrt(1+C11+C22+C33);
    q1 = (C32-C23)/(4*q4);
    q2 = (C13-C31)/(4*q4);
    q3 = (C21-C12)/(4*q4);
    Q = [q1; q2; q3; q4];
 
end