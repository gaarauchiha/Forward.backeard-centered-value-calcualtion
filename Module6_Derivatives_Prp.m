clear;clc;load poolSensorData.mat;

% Q1
amyVelocity = zeros(50,1);
poolSensorData.amyVelocity = amyVelocity;

% Q2
amyVelocity(1) = (poolSensorData.distance(2)-poolSensorData.distance(1))/(poolSensorData.time(2)-poolSensorData.time(1));

% Q3
amyVelocity(50) = (poolSensorData.distance(50)-poolSensorData.distance(49))/(poolSensorData.time(50)-poolSensorData.time(49));

% Q4
for i = 2:49
    amyVelocity(i) = (poolSensorData.distance(i+1)-poolSensorData.distance(i-1))/(poolSensorData.time(i+1)-poolSensorData.time(i-1));
end

poolSensorData.amyVelocity = amyVelocity;
% Q5
maxVelocity = max(amyVelocity);

% Q6
minVelocity = min(amyVelocity);