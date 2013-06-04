%% Load the data
load('baselineMultiTaskTrainSet.mat')

disp('---------')
disp('TASK 1')
task1_testSet
logreg_run

disp('---------')
disp('TASK 2')
task2_testSet
logreg_run

disp('---------')
disp('TASK 3')
task3_testSet
logreg_run