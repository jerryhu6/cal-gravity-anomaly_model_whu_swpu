function [l,m]=generatelm(nn)
l=zeros((nn+2)*(nn+1)/2,1);
m=zeros((nn+2)*(nn+1)/2,1);

for i=0:nn
   for j=0:i
       index=(i+1)*i/2+j+1;
       l(index)=i;
       m(index)=j;
   end
end
end