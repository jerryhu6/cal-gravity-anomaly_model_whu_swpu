clear all;

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




num=300;
totalnum=(num+2)*(num+1)/2-2;
[nn,mm,cc,ss]=read_whu_swpu(1e5);

nn=nn(1:totalnum);
mm=mm(1:totalnum);
cc=cc(1:totalnum);
ss=ss(1:totalnum);


c2n=zeros(length(ss),1);
for i=0:2:num-mod(num,2)
    index=find((nn==i) & (mm==0));
    n=nn(index);
    c2n(index)=-j2n(n/2,true);
end

cc=cc-c2n;


lonstart=-180;
lonend=180;

latstart=-90;
latend=90;
step=1;


lon=lonstart:step:lonend;
lat=latstart:step:latend;

[lonmesh,latmesh]=meshgrid(lon,lat);

 delta=lonmesh;

 for i=1:length(lon)
     for j=1:length(lat)
      delta(j,i)=cal_delta_g(nn,mm,cc,ss,lonmesh(j,i),latmesh(j,i),0,180);   
      (i-1)*length(lat)+j
     end
     
 end

imagesc(delta)





