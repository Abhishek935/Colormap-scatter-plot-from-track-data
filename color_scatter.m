close all
clc

scatter(centroid2(:,1),centroid2(:,2),'k')
axis equal
set(gca,'YDir','reverse')
title('Flavobacterium track')
hold on
scatter(centroid2(1,1),centroid2(1,2),'g')
scatter(centroid2(end,1),centroid2(end,2),'r')

%% Calculating the time from the frmae rate (frames per second; fps)
fps = 8;
ti = 1/fps;
endpoint = numFrames * ti;
time = (ti: ti : endpoint)';


%% Creating a x-y coordinate scatter plot with time as a colormap
figure(2)
scatter3(centroid2(:,1),centroid2(:,2),time(:),20,time(:));
set(gca,'YDir','reverse')
colormap(hsv);
title('Flavobacterium track 2')
view([0 90]);
