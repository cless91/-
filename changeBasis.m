clear all;
close all;
pkg load geometry;

xmin = -3;
xmax = 7;
ymin = -2;
ymax = 4;

arrowHeadSize = 0.3;

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
eH = drawArrow([zeros(2,2), [e1'; e2']],arrowHeadSize, arrowHeadSize);
eH_ = drawArrow([zeros(2,2), [e1_'; e2_']],arrowHeadSize, arrowHeadSize);

%coloring the arrows
arrayfun(@(x,y)set(x,'color',y), [eH.body; eH.wing(:)],repmat(['ggg']',2,1));
arrayfun(@(x,y)set(x,'color',y), [eH_.body; eH_.wing(:)],repmat(['rrr']',2,1));

%make the arrows bold
lineWidth = 3;
arrayfun(@(x,y)set(x,'linewidth',y), [eH.body; eH.wing(:)],repmat([lineWidth lineWidth lineWidth]',2,1));
arrayfun(@(x,y)set(x,'linewidth',y), [eH_.body; eH_.wing(:)],repmat([lineWidth lineWidth lineWidth]',2,1));

%plotting coordinates => specific slides
%eH1 = drawArrow([[e1_'], [(2*e1_)']],arrowHeadSize, arrowHeadSize);
%arrayfun(@(x,y)set(x,'color',y), [eH1.body; eH1.wing(:)],repmat(['rrr']',1,1));
%arrayfun(@(x,y)set(x,'linewidth',y), [eH1.body; eH1.wing(:)],repmat([lineWidth lineWidth lineWidth]',1,1));

%plots the points
v1 = [4 3];
lineWidth = 2;
%ev1 = drawArrow([zeros(1,2), v1],arrowHeadSize, arrowHeadSize);
%arrayfun(@(x,y)set(x,'color',y), [ev1.body; ev1.wing(:)],repmat(['kkk' ]',1,1));
%arrayfun(@(x,y)set(x,'linewidth',y), [ev1.body; ev1.wing(:)],repmat([lineWidth lineWidth lineWidth]',1,1));

%v2 = [4, 3];
%plot(v2(1),v2(2), "bo", "linewidth", 2);

%plotting projections/components
%e1 on e1_
%plotComponent(e1, e2_, e1_, ":", 2, [0.5 0.5 0.5]);
%e1 on e2_
%plotComponent(e1, -e1_, -e2_, ":", 2, [0.5 0.5 0.5]);
%e2 on e1_
%plotComponent(e2, -e2_, e1_, ":", 2, [0.5 0.5 0.5]);
%e2 on e2_
%plotComponent(e2, -e1_, e2_, ":", 2, [0.5 0.5 0.5]);

%components of origin basis vector in destination basis
line1 = createLine(e1(1), e1(2), e2_(1), e2_(2));
line2 = createLine(0, 0, e1_(1), e1_(2));
x11 = intersectLines(line1, line2);

line1 = createLine(e1(1), e1(2), -e1_(1), -e1_(2));
line2 = createLine(0, 0, -e2_(1), -e2_(2));
x21 = intersectLines(line1, line2);

line1 = createLine(e2(1), e2(2), -e2_(1), -e2_(2));
line2 = createLine(0, 0, e1_(1), e1_(2));
x12 = intersectLines(line1, line2);

line1 = createLine(e2(1), e2(2), -e1_(1), -e1_(2));
line2 = createLine(0, 0, e2_(1), e2_(2));
x22 = intersectLines(line1, line2);

saveas (1, "/media/joseph/5793-02B3/backup/TODOリスト/５＿プロジェクトリスト。プロジェクト参考情報/主成分分析/トランク/英語版/数学的/基準変換/例/figure19.png");

