function myjulia(Zmax,c,N)
if (nargin==1)
   Ndemo=Zmax; clear Zmax
   switch Ndemo
   case {1}
       myjulia(1,-0.297491+i*0.641051,100);
       return;
   case {2}
       myjulia(0.35,-0.297491+i*0.641051,250);
       return;
   otherwise
      disp('Not defined demo type!')
      help myjulia;
      return
   end
elseif (nargin~=3)
   help myjulia;
   return
end

% generate the basic matrix
NM=500;
[Z,tmpy]=meshgrid(linspace(-Zmax,Zmax,NM),zeros(1,NM));
Z=Z+i*Z'; clear tmpy

% compute the escape velocity
myM=reshape(escapeVelocity(Z(:),c,N),NM,NM);

% visualize the results
imagesc(atan(0.1*myM)); figurenicer;axis xy;

