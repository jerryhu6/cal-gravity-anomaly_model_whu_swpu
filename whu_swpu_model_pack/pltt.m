imagesc(lon, lat, delta);
axis xy; % 确保纬度方向正确（南极在下）
colorbar;
xlabel('经度');
ylabel('纬度');
title('重力异常');

hold on;
load coastlines; % MATLAB自带海岸线
plot(coastlon, coastlat, 'k', 'LineWidth', 1);
hold off;