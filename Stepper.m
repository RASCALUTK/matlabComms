function [] = Stepper(s,xval,yval,zval,prevState)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



val = [xval,yval,zval];

for i = 1:3
    
    if val(i) > .15
        
        val(i) = 1;
        
    elseif val(i) < -.15
        
        val(i) = -1;
        
    else
        
        val(i) = 0;
        
    end
    
    
    
end

xval = num2str(val(1));
yval = num2str(val(2));
zval = num2str(val(3));

% if the current value is not the same as the last
% it changes sends a commands then sets the new 
% state toe the Prev State variable
if prevState(1) ~= xval
    val = ['X',xval];
    prevState(1) = val;
    fprintf(s,val);
end

if prevState(2) ~= yval
    val = ['Y',yval];
    prevState(2) = val;
    fprintf(s,val);
end

if prevState(3) ~= zval
    val = ['Z',zval];
    fprintf(s,val);
    prevState(3) = val;
end


end

