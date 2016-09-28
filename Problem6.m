%W=1:0.5.^10
%S= sum(W)
%L=1/(1-0.5)

r=0.5;
result = 1;
for n=1:100
    result=result+r^n;
end 
result