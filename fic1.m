clear all;
close all;

sigma = [1 0 0 ; 0 3 0 ; 0 0 1];
data = randn(100, 3) * sigma;

scatter3(data(:,1), data(:,2), data(:,3));

%the axis vectors
%startAxisVector = zeros(3);
%endAxisVector = [1 0 0 ; 0 1 0 ; 0 0 1];

startXAxisVector = zeros(1, 3);
endXAxisVector = [1 0 0];
startYAxisVector = zeros(1, 3);
endYAxisVector = [0 1 0];
startZAxisVector = zeros(1, 3);
endZAxisVector = [0 0 1];

%quiver3(0, 0, 0, 1, 0, 0);

hold on;

%矢の大きさ
quiver3(startXAxisVector(:,1), startXAxisVector(:,2), startXAxisVector(:,3), endXAxisVector(:,1), endXAxisVector(:,2), endXAxisVector(:,3), 0, "linewidth", 3, "color", "blue");
quiver3(startYAxisVector(:,1), startYAxisVector(:,2), startYAxisVector(:,3), endYAxisVector(:,1), endYAxisVector(:,2), endYAxisVector(:,3), 0, "linewidth", 3, "color", "red");
quiver3(startZAxisVector(:,1), startZAxisVector(:,2), startZAxisVector(:,3), endZAxisVector(:,1), endZAxisVector(:,2), endZAxisVector(:,3), 0, "linewidth", 3, "color", "green");

axisStart = -4;
axisEnd = 4;
axis([axisStart axisEnd axisStart axisEnd axisStart axisEnd]);

