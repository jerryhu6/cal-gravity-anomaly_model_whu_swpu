function [r,lamda,theta]=h_lmd(L,B,H)
b=6356752.31414;
a=6378137;
        B_rad = B * pi / 180; % 纬度转换为弧度
        L_rad = L * pi / 180; % 经度转换为弧度
        e2 = 1 - (b /a)^2;
        W = sqrt(1 - e2 * sin(B_rad)^2);
        N = a / W;

        x = (N + H) * cos(B_rad) * cos(L_rad); % 假设高度为0
        y = (N + H) * cos(B_rad) * sin(L_rad);
        z = (N * (1 -  e2) + H) * sin(B_rad);

        r = sqrt(x^2 + y^2 + z^2);
        theta = atan2(sqrt(x^2 + y^2), z)*180/pi;
        lamda = atan2(y, x)*180/pi;
        
end