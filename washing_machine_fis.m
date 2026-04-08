clc;
clear;
close all;

% Create FIS
fis = mamfis('Name','WashingMachine');

% INPUT 1: Dirt Level
fis = addInput(fis,[0 10],'Name','DirtLevel');
fis = addMF(fis,'DirtLevel','trimf',[0 0 5],'Name','Low');
fis = addMF(fis,'DirtLevel','trimf',[0 5 10],'Name','Medium');
fis = addMF(fis,'DirtLevel','trimf',[5 10 10],'Name','High');

% INPUT 2: Load Size
fis = addInput(fis,[0 10],'Name','LoadSize');
fis = addMF(fis,'LoadSize','trimf',[0 0 5],'Name','Small');
fis = addMF(fis,'LoadSize','trimf',[0 5 10],'Name','Medium');
fis = addMF(fis,'LoadSize','trimf',[5 10 10],'Name','Large');

% OUTPUT: Wash Time
fis = addOutput(fis,[0 60],'Name','WashTime');
fis = addMF(fis,'WashTime','trimf',[0 0 30],'Name','Short');
fis = addMF(fis,'WashTime','trimf',[15 30 45],'Name','Medium');
fis = addMF(fis,'WashTime','trimf',[30 60 60],'Name','Long');

% RULES
ruleList = [
    1 1 1 1 1;
    1 2 1 1 1;
    1 3 2 1 1;
    2 1 2 1 1;
    2 2 2 1 1;
    2 3 3 1 1;
    3 1 3 1 1;
    3 2 3 1 1;
    3 3 3 1 1;
];

fis = addRule(fis,ruleList);

% Show Membership Functions
figure;
plotmf(fis,'input',1);
title('Dirt Level Membership Functions');

figure;
plotmf(fis,'input',2);
title('Load Size Membership Functions');

figure;
plotmf(fis,'output',1);
title('Wash Time Membership Functions');

% Rule Viewer
ruleview(fis);

% Example Evaluation
input = [7 8]; % Dirt=7, Load=8
output = evalfis(fis,input);

disp(['Wash Time: ', num2str(output), ' minutes']);
% Generate surface plot
[x, y] = meshgrid(0:1:10, 0:1:10);
z = zeros(size(x));

for i = 1:size(x,1)
    for j = 1:size(x,2)
        z(i,j) = evalfis(fis, [x(i,j) y(i,j)]);
    end
end

figure;
surf(x, y, z);

xlabel('Dirt Level');
ylabel('Load Size');
zlabel('Cycle Time');
title('Washing Machine Fuzzy Surface');

colorbar;