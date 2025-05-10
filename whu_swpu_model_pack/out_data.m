% 生成 XYZ 数据
xyz = [lonmesh(:), latmesh(:), delta(:)];

% 保存为 .xyz 文件
dlmwrite('whu_gravity_anomaly_2008.xyz', xyz, 'delimiter', ' ', 'precision', '%.6f');

disp('XYZ 文件已保存为 whu_gravity_anomaly.xyz');