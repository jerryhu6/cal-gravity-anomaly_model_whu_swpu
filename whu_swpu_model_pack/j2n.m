function result=j2n(n,ju) %j2n,if true,normalize
E=521854.0097002480;
GM=3.986004418*1e14;
w=7.292115*1e-5;
b=6356752.31414;
a=6378137;
e_=0.0820944381519;
m=w*w*a*a*b/GM;
q0=0.5*((1+3*b*b/(E*E))*atan(E/b)-3*b/E);
R=6371008.77138;
e=8.1819191042815*1e-2;

j2=1.0826362774e-3;

result=(-1)^(n+1)*3*e^(2*n)/((2*n+1)*(2*n+3))*(1-n+5*n*j2/e^2);
if ju
result=result*sqrt(1.0/(4*n+1));
end

end