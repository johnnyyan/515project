
alphas = [0];%,0.5,1,2,3,4,6,8];
nAlphas = numel(alphas);
nbAcc = zeros(nAlphas,1); % Naive Bayes accuracy depending on pseudo count
nbPrecision = zeros(nAlphas,1); % Naive Bayes precision depending on pseudo count
nbRecall = zeros(nAlphas,1); % Naive Bayes recall depending on pseudo count

for ialpha = 1:nAlphas
    alpha = alphas(ialpha);
    %% Train NB
    nb = nb_learn(trainSet.binaryFeatures, trainSet.states,alpha);
    %% Test NB
    nSamples = size(testSet.states,2);
    nStates = 2;
    nSamples;
    t = CTimeleft(nSamples);
    errs_nb = zeros(nSamples,1);
    truePositive_nb = 0;
    positive_nb = 0;
    true_nb = 0;
    for i = 1:nSamples
        %t.timeleft();

        sample = testSet.binaryFeatures(:,i);
        state  = testSet.states(i);

        pObs = zeros(2,1);
        for j=1:nStates
            % probability of given set of observation under the assumption of state j

            pObs(j) = prod((sample'.*nb.pObs(j,:))+((1-sample)'.*(1-nb.pObs(j,:))));
            
        end
        % Compute probability according to NB and take predictions
        px_nb = pObs.*nb.pState;
        [pmax_nb,yhat_nb] = max(px_nb);

%         sample'
%         pObs
%         nb.pState
%         px_nb
%         yhat_nb
%         pause

        % Compute if we got it right
        errs_nb(i) = (yhat_nb ~= (state+1));
        truePositive_nb = truePositive_nb + ((yhat_nb==2)*(state==1));
        positive_nb = positive_nb + (state==1);
        true_nb = true_nb + (yhat_nb==2);

    end

    % Compute accuracies
    nbAcc(ialpha) = (1-sum(errs_nb)/nSamples);
    nbPrecision(ialpha) = truePositive_nb / true_nb;
    nbRecall(ialpha) = truePositive_nb / positive_nb;
    nbFmeasure(ialpha) = 2*nbPrecision(ialpha)*nbRecall(ialpha)/(nbPrecision(ialpha)+nbRecall(ialpha));
    
    fprintf('Training Set Distribution: %g%% vs %g%%\n', 100*(1-mean(trainSet.states)), 100*(mean(trainSet.states)));
    fprintf('Test Set Distribution: %g%% vs %g%%\n', 100*(1-mean(testSet.states)), 100*(mean(testSet.states)));
    fprintf('NB Accuracy: %g%%\n', nbAcc(ialpha)*100);
    fprintf('NB Precision: %g%%\n', nbPrecision(ialpha)*100);
    fprintf('NB Recall: %g%%\n', nbRecall(ialpha)*100);
    fprintf('NB F1 measure: %g%%\n', nbFmeasure(ialpha)*100);
%sum(testSet.lines) + sum(trainSet.lines)
end

%% plots

% figure
% plot(alphas,nbAcc,'r*-');
% legend('Naive Bayes accuracy');
% xlabel('alpha')
% ylabel('accuracy')
% title('Test accuracies for single task Naive Bayes classifier');
% axis([0 8 0 1])
% print -dpdf -r72 plot_accuracy.pdf;

%nb.pObs
%nb.pState