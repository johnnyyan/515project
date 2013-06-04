%% Load the data
cd ../matlabdata
addpath(pwd)
cd ../matlabsource

load('../matlabdata/multiTaskTrainSet');

sizes = zeros(3,1)
sizes(1) = numel(multiTaskTrainSet.states{1})
sizes(2) = numel(multiTaskTrainSet.states{2})
sizes(3) = numel(multiTaskTrainSet.states{3})

baselineSize = min(sizes)

baselineMultiTaskTrainSet = struct();
baselineMultiTaskTrainSet.states = [];
baselineMultiTaskTrainSet.binaryFeatures = [];

for i = 1:3
    
    p = randperm(sizes(i));
    p = p(1:baselineSize);
    max(p)
    baselineMultiTaskTrainSet.states = [baselineMultiTaskTrainSet.states multiTaskTrainSet.states{i}(p)];
    baselineMultiTaskTrainSet.binaryFeatures = [baselineMultiTaskTrainSet.binaryFeatures multiTaskTrainSet.binaryFeatures{i}(:,p)];
end

if numel(baselineMultiTaskTrainSet.states) ~= 3*baselineSize
    disp('ERROR: Subsampling size does not match')
else
    disp('Subsampling successful')
end

trainSet = baselineMultiTaskTrainSet
save('../matlabdata/baselineMultiTaskTrainSet','trainSet');
