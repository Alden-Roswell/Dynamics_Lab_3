clear;
close all;
clc;

Q1 = readmatrix("2026_02_10_001_GYRO_F02C05");

polyfit(Q1)




q2 = readmatrix("2026_02_10_001_RWHEEL_T10t5");
% Process the data from the matrices
q2(1:1404,:) = [];
q2(:,2);
q2(q2(:,4)<0,:) = [];
q2(q2(:,2) ~= 10,:) = [];
figure()
hold on;
[P,s] = polyfit(q2(:,1), q2(:,3),1)
scatter(q2(:,1),q2(:,3))
t = linspace(0,7000,100)
plot(t,P(1)*t + P(2))
P(1)
P(2)
