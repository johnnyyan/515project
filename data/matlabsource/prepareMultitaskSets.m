%% Load the data
cd ../matlabdata
addpath(pwd)
cd ../matlabsource

multiTaskTrainSet = struct();
multiTaskTrainSet.states = cell(3,1);
multiTaskTrainSet.binaryFeatures = cell(3,1);

multiTaskTestSet = struct();
multiTaskTestSet.states = cell(3,1);
multiTaskTestSet.binaryFeatures = cell(3,1);

disp('---------')
disp('TASK 1')
task1_trainSet
task1_testSet
multiTaskTestSet.states{1} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTestSet.binaryFeatures{1} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask

disp('---------')
disp('TASK 2')
task2_trainSet
task2_testSet
multiTaskTestSet.states{2} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTestSet.binaryFeatures{2} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask

disp('---------')
disp('TASK 3')
task3_trainSet
task3_testSet
multiTaskTestSet.states{3} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTestSet.binaryFeatures{3} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask

disp('---------')
disp('TASK 4')
task4_trainSet
task4_testSet
multiTaskTrainSet.states{1} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTrainSet.binaryFeatures{1} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask

disp('---------')
disp('TASK 5')
task5_trainSet
task5_testSet
multiTaskTrainSet.states{2} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTrainSet.binaryFeatures{2} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask

disp('---------')
disp('TASK 6')
task6_trainSet
task6_testSet
multiTaskTrainSet.states{3} = [trainSet.states testSet.states] % use both for the multitask
multiTaskTrainSet.binaryFeatures{3} = [trainSet.binaryFeatures testSet.binaryFeatures] % use both for the multitask


save('../matlabdata/multiTaskTrainSet','multiTaskTrainSet');
save('../matlabdata/multiTaskTestSet','multiTaskTestSet');

