function n = escapevelocity(z0,c,N)
    count = 1;
    step = z0;
    while count < N
       step = step^2 + c;
       if abs(step)>2
           n = count -1;
       end
    end
    if count>=N
        n = N;
    end
end