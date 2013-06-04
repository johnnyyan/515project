%% Load the data
cd ../matlabdata
addpath(pwd)
cd ../matlabsource

load('../matlabdata/baselineMultiTaskTrainSet.mat')

disp('---------')
disp('TASK 1')
task1_testSet
nb_run

disp('---------')
disp('TASK 2')
task2_testSet
nb_run

disp('---------')
disp('TASK 3')
task3_testSet
nb_run