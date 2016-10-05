c=5
t=0:0.001:10*pi;
x = sin(t/(2*c)).*cos(t);
y = sin(t/(2*c)).*sin(t);
z = cos(t/(2*c));

figure (1)
plot3 (x,y,z)

a=10;b=1;c=0.3;
t=0:0.01:2*pi;
x2 = cos(t).*sqrt(b*b-(c*c).*(cos(a*t)).*(cos(a*t)));
y2 = sin(t).*sqrt(b*b-(c*c).*(cos(a*t)).*(cos(a*t)));
z2 = c * cos(a*t);

figure(2)
plot3 (x2,y2,z2)