function ind = findNearest (x, desireVal)
    temp = abs(x-desiredVal);
    num = min(min(temp));
    ind = find(temp==num);
end