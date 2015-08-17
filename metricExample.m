clear all;
close all;

A = [1 0.5 ; 0 1];
M = A' * A;

vect1 = [1 1]';
vect2 = [2 0]';
vect3 = [2 1]';

dv1 = vect1 ' * vect1
dv2 = vect2 ' * vect2
dv3 = vect3 ' * vect3

dvM1 = vect1 ' * M * vect1
dvM2 = vect2 ' * M * vect2
dvM3 = vect3 ' * M * vect3


%plot([vect1 vect2 vect3](1,:), [vect1 vect2 vect3](2,:), "r+");
plot([vect1](1,:), [vect1](2,:), "r+");
hold on;

quiver(0, 0, 0, 0, 0);

vectT1 = A*vect1+0.05;
vectT2 = A*vect2+0.05;
vectT3 = A*vect3+0.05;

plot(vectT1(1,:), vectT1(2,:), "b+");
axis([0 5 -1 5]);
grid

