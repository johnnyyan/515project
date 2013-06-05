%% Load the data
%{
cd ../matlabdata
addpath(pwd)
cd ../matlabsource
%}

disp('---------')
disp('TASK 1')
task1_trainSet
task1_testSet
logreg_run

disp('---------')
disp('TASK 2')
task2_trainSet
task2_testSet
logreg_run

disp('---------')
disp('TASK 3')
task3_trainSet
task3_testSet
logreg_run

disp('---------')
disp('TASK 4')
task4_trainSet
task4_testSet
logreg_run

disp('---------')
disp('TASK 5')
task5_trainSet
task5_testSet
logreg_run

disp('---------')
disp('TASK 6')
task6_trainSet
task6_testSet
logreg_run