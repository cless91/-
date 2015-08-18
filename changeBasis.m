clear all;
close all;
pkg load geometry;

xmin = -7;
xmax = 7;
ymin = -7;
ymax = 7;

%canonical base
ecan1 = [1 ; 0];
ecan2 = [0 ; 1];

%origin base
e1 = [1 ; 0];
e2 = [0 ; 1];

%destination base
e1_ = [3 ; 1];
e2_ = [-2 ; 1];

hold on;
axis([xmin xmax ymin ymax]);

%plots the grids
plotGrid(xmin,xmax, ymin, ymax, e1, e2, 7, 7, 'g', 1);
plotGrid(xmin,xmax, ymin, ymax, e1_, e2_, 5, 4, 'r', 1);
plotGrid(xmin,xmax, ymin, ymax, ecan1, ecan2, 0, 0, 'black', 2);

%arrows for all the different basis
arrowHeadSize = 0.4;
eH = drawArrow([zeros(2,2), [e1'; e2']],arrowHeadSize, arrowHeadSize);
eH_ = drawArrow([zeros(2,2), [e1_'; e2_']],arrowHeadSize, arrowHeadSize);

%coloring the arrows
arrayfun(@(x,y)set(x,'color',y), [eH.body; eH.wing(:)],repmat(['ggg']',2,1));
arrayfun(@(x,y)set(x,'color',y), [eH_.body; eH_.wing(:)],repmat(['rrr']',2,1));

%make the arrows bold
lineWidth = 3;
arrayfun(@(x,y)set(x,'linewidth',y), [eH.body; eH.wing(:)],repmat([lineWidth lineWidth lineWidth]',2,1));
arrayfun(@(x,y)set(x,'linewidth',y), [eH_.body; eH_.wing(:)],repmat([lineWidth lineWidth lineWidth]',2,1));

%plots the points
v1 = [-3, -2];
plot(v1(1),v1(2), "bo", "linewidth", 2);

v2 = [4, 3];
plot(v2(1),v2(2), "bo", "linewidth", 2);

