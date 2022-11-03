function [position,isterminal,direction] = event1(t,x)
  
  position = x(2)-10 ; % The value that we want to be zero
  isterminal = 1;  % Halt integration 
  direction = 0;   % The zero can be approached from either direction
  
end

function 