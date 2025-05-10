function delta_g=cal_delta_g(nn,mm,cc,ss,lon,lat,h,num_n)
GM=3.986004418*1e14;
a=6378137;

num=(num_n+2)*(num_n+1)/2;
nn=nn(1:num);
mm=mm(1:num);
cc=cc(1:num);
ss=ss(1:num);

r=high(h,lat);
PP=legen(90-lat,max(nn));
resul=0;
for i=1:length(nn)
n=nn(i);
m=mm(i);
c=cc(i);
s=ss(i);

resul=resul+(n-1)*(a/r)^n*(c*cosd(m*lon)+s*sind(m*lon))*PP(n+1,m+1);


end



resul=resul*GM/r^2;


delta_g=resul*1e5;%(m/s to mGal)





end