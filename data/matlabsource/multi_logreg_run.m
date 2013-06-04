%% Load the data
load('multiTaskTrainSet.mat')
%load('multiTaskTestSet.mat')
%task1_testSet

%% Train LogReg
reg=[1e-5,1e-5];
params = multi_logreg_learn(reg,multiTaskTrainSet.states,multiTaskTrainSet.binaryFeatures);
trainset = horzcat(multiTaskTrainSet.states{1},multiTaskTrainSet.states{2},multiTaskTrainSet.states{3});

%% Test LogReg
disp('---------')
disp('TASK 1')
task1_testSet
nSamples = size(testSet.states,2);

errs_logreg = zeros(nSamples,1);
truePositive_logreg = 0;
positive_logreg = 0;
true_logreg = 0;

for i = 1:nSamples
    sample = testSet.binaryFeatures(:,i);
    state  = testSet.states(i);

    % Compute probability according to LogReg 
    yhat_logreg = (sample'*params) > 0;

    % Compute if we got it right
    errs_logreg(i) = (yhat_logreg ~= state);
    truePositive_logreg = truePositive_logreg + ((yhat_logreg==1)*(state==1));
    positive_logreg = positive_logreg + (state==1);
    true_logreg = true_logreg + (yhat_logreg==1);

end

% Compute accuracies
logregAcc = (1-sum(errs_logreg)/nSamples);
logregPrecision = truePositive_logreg / true_logreg;
logregRecall = truePositive_logreg / positive_logreg;
logregFmeasure = 2*logregPrecision*logregRecall/(logregPrecision+logregRecall);

fprintf('Training Set Distribution: %g%% vs %g%%\n', 100*(1-mean(trainset)), 100*(mean(trainset)));
fprintf('Test Set Distribution: %g%% vs %g%%\n', 100*(1-mean(testSet.states)), 100*(mean(testSet.states)));
fprintf('LogReg Accuracy:   %g%%\n', logregAcc*100);
fprintf('LogReg Precision:  %g%%\n', logregPrecision*100);
fprintf('LogReg Recall:     %g%%\n', logregRecall*100);
fprintf('LogReg F1 measure: %g%%\n', logregFmeasure*100);

disp('---------')
disp('TASK 2')
task2_testSet
nSamples = size(testSet.states,2);

errs_logreg = zeros(nSamples,1);
truePositive_logreg = 0;
positive_logreg = 0;
true_logreg = 0;

for i = 1:nSamples
    sample = testSet.binaryFeatures(:,i);
    state  = testSet.states(i);

    % Compute probability according to LogReg 
    yhat_logreg = (sample'*params) > 0;

    % Compute if we got it right
    errs_logreg(i) = (yhat_logreg ~= state);
    truePositive_logreg = truePositive_logreg + ((yhat_logreg==1)*(state==1));
    positive_logreg = positive_logreg + (state==1);
    true_logreg = true_logreg + (yhat_logreg==1);

end

% Compute accuracies
logregAcc = (1-sum(errs_logreg)/nSamples);
logregPrecision = truePositive_logreg / true_logreg;
logregRecall = truePositive_logreg / positive_logreg;
logregFmeasure = 2*logregPrecision*logregRecall/(logregPrecision+logregRecall);

fprintf('Training Set Distribution: %g%% vs %g%%\n', 100*(1-mean(trainset)), 100*(mean(trainset)));
fprintf('Test Set Distribution: %g%% vs %g%%\n', 100*(1-mean(testSet.states)), 100*(mean(testSet.states)));
fprintf('LogReg Accuracy:   %g%%\n', logregAcc*100);
fprintf('LogReg Precision:  %g%%\n', logregPrecision*100);
fprintf('LogReg Recall:     %g%%\n', logregRecall*100);
fprintf('LogReg F1 measure: %g%%\n', logregFmeasure*100);

disp('---------')
disp('TASK 3')
task3_testSet
nSamples = size(testSet.states,2);

errs_logreg = zeros(nSamples,1);
truePositive_logreg = 0;
positive_logreg = 0;
true_logreg = 0;

for i = 1:nSamples
    sample = testSet.binaryFeatures(:,i);
    state  = testSet.states(i);

    % Compute probability according to LogReg 
    yhat_logreg = (sample'*params) > 0;

    % Compute if we got it right
    errs_logreg(i) = (yhat_logreg ~= state);
    truePositive_logreg = truePositive_logreg + ((yhat_logreg==1)*(state==1));
    positive_logreg = positive_logreg + (state==1);
    true_logreg = true_logreg + (yhat_logreg==1);

end

% Compute accuracies
logregAcc = (1-sum(errs_logreg)/nSamples);
logregPrecision = truePositive_logreg / true_logreg;
logregRecall = truePositive_logreg / positive_logreg;
logregFmeasure = 2*logregPrecision*logregRecall/(logregPrecision+logregRecall);

fprintf('Training Set Distribution: %g%% vs %g%%\n', 100*(1-mean(trainset)), 100*(mean(trainset)));
fprintf('Test Set Distribution: %g%% vs %g%%\n', 100*(1-mean(testSet.states)), 100*(mean(testSet.states)));
fprintf('LogReg Accuracy:   %g%%\n', logregAcc*100);
fprintf('LogReg Precision:  %g%%\n', logregPrecision*100);
fprintf('LogReg Recall:     %g%%\n', logregRecall*100);
fprintf('LogReg F1 measure: %g%%\n', logregFmeasure*100);