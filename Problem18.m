%% TD1
% Problem 18

%% Antoine MERLET, Condorcet

clc; % Clear command window.
clear; % Delete all variables.
close all; % Close all figure windows except those created byimtool.
imtool close all; % Close all figure windows created by imtool.
workspace; % Make sure the workspace panel is showing.

%% Problem 18

trgl = [ 1 sqrt(3) ;0 0; 2 0];
nbgames = 50000;
startpoint = [0 1];

points = zeros(nbgames,2);

for i = 2:nbgames
   RNGvert = ceil(3*rand(1));
   points(i,:)=trgl(RNGvert,:)-(trgl(RNGvert,:) - points(i-1,:))/2;
end

cla                                                       % Plot the points
plot(points(:,1), points(:,2), 'LineStyle', 'none', 'Marker', '.', 'MarkerSize', 3)