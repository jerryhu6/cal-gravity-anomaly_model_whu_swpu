function [l,m,c,s]=read_whu_swpu(num)
filename='WHU-SWPU-GOGR2022S.gfc'


fid=fopen(filename);
for i=1:86
    fgetl(fid);
end
data = textscan(fid, '%*s %f %f %f %f %f %f', [num, 6]);
m=data{1,2};
l=data{1,1};
s=data{1,4};
c=data{1,3};
end
