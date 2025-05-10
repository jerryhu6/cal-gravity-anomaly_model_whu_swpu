function result=high(h,lat)
b=6356752.31414;
a=6378137;
%h meter
theta=lat;
theta=theta*pi/180;
x0=sqrt(a^4/(a^2+tan(theta)*tan(theta)*b^2));
y0=sqrt(tan(theta)*tan(theta)*b^4/(a^2+tan(theta)*tan(theta)*b^2));
x=x0+h*cos(theta);
y=y0+h*sin(theta);

result=sqrt(x*x+y*y);
end

