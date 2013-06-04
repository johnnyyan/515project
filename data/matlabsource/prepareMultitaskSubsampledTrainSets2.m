%% Load the data
cd ../matlabdata
addpath(pwd)
cd ../matlabsource

load('../matlabdata/multiTaskTrainSet2');

sizes = zeros(2,1)
sizes(1) = numel(multiTaskTrainSet.states{1})
sizes(2) = numel(multiTaskTrainSet.states{2})

baselineSize = min(sizes)

baselineMultiTaskTrainSet = struct();
baselineMultiTaskTrainSet.states = [];
baselineMultiTaskTrainSet.binaryFeatures = [];

for i = 1:2
    
    p = randperm(sizes(i));
    p = p(1:baselineSize);
    max(p)
    multiTaskTrainSet.states{i} = multiTaskTrainSet.states{i}(p);
    multiTaskTrainSet.binaryFeatures{i} = multiTaskTrainSet.binaryFeatures{i}(:,p);
end
save('../matlabdata/multiTaskTrainSetSubsampled2','multiTaskTrainSet');
