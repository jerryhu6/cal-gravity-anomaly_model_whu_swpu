function P = lee(phi,n)
% 正规化勒让德系数向前列递推算法
phi=phi*pi/180;
P = zeros(n+1, n+1);  % 初始化P矩阵
P(1,1) = 1;
P(2,1) = sqrt(3)*cos(phi);
P(2,2) = sqrt(3)*sin(phi);
 
for i = 3:n+1
    l=i-1;
    P(i,i) = sqrt((2*l+1)/(2*l))*sin(phi)*P(i-1,i-1);
end
 
for i = 3:n+1
    for j = 1:i-1
        l=i-1;
        q=j-1;
        P(i,j)= sqrt((2*l-1)*(2*l+1)/(l+q)/(l-q))*cos(phi)*P(i-1,j)-sqrt((2*l+1)*(l+q-1)*(l-q-1)/(2*l-3)/(l-q)/(l+q))*P(i-2,j);
    end
end
end

