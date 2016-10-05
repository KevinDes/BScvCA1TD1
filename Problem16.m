% 
% function [x1,x2] = quadform(a,b,c)
%     delta = (b*b)-(4*a*c)
%     if delta > 0
%         X1 = (((-b)-(sqrt(delta)))/(2*a))
%         X2 = (((-b)+(sqrt(delta)))/(2*a))
%     else 
%         X1 = (((-b)-(sqrt(-delta)))/(2*a))
%         X2 = (((-b)+(sqrt(-delta)))/(2*a))
%     end



function [x3,x4] = quadform2(a,b,c)
    delta2 = (b*b)-(4*a*c)
    if delta2 > 0 
        X3 = (((-b)-(sign(b)).*(sqrt(delta2)))/(2*a))
        X4 = c/(X3*a)
    else
        X3 = (((-b)-(sign(b)).*(sqrt(-delta2)))/(2*a))
        X4 = c/(X3*a)
end