%% L Drabsch 18/3/16
% Experimental robotics Assignment 1 Question 4
% Modified DH
% Aero coordinate convention
close all
%% transformations
% DHmod = Rot(z,theta)*trans(z,d)*rot(x,alpha)*trans(x,a)
thetas = [0,0,0,0,0];

Base = createT(0,0,0,zeros(3,1));
A0_1 = DHmod(0,0,0,thetas(1));
A1_2 = DHmod(5,90,0,thetas(2));
A2_3 = DHmod(10,-90,0,thetas(3));
A3_4 = DHmod(15,-90,0,thetas(4));
A4_5 = DHmod(0,90,5,thetas(5));

figure(1)
hold on
figQ4.coord = hggroup;
plotcoord(Base,'k',figQ4.coord)
plotcoord(A0_1,'r',figQ4.coord)
plotcoord(A0_1*A1_2,'y',figQ4.coord)
plotcoord(A0_1*A1_2*A2_3,'g',figQ4.coord)
plotcoord(A0_1*A1_2*A2_3*A3_4,'b',figQ4.coord)
plotcoord(A0_1*A1_2*A2_3*A3_4*A4_5,'m',figQ4.coord)