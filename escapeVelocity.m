function n=escapeVelocity(z0,c,N)
    n=z0*0;
    index=(1:length(z0))';
    for i=1:N
          low=find(abs(z0)<2);
          high=find(abs(z0)>=2);
          n(index(high))=i;
          if (length(low)>0)
             z0(low)=z0(low).*z0(low)+c;
          end
          z0(high)=[];
          index(high)=[];
    end
    if ~isempty(index)
       n(index)=N;
    end
end