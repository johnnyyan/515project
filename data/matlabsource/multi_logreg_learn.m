function params = multi_logreg_learn(reg,states,features)
% Evaluates the objective (log-likelihood of the data)
%
% Usage:
%
%    params = multi_logreg_learn(reg,states,features)
%
% Find MLE parameters for multitask logistic regression. STATES is the 
% set of states for all the samples from all the tasks. FEATURES is the 
% set of features for all the samples from all the tasks.
%
% The output is the MLE paramters for multitask logistic regression
% N x 1 array - mean weight, where N is the number of features.

TASK       =   size(features,1);     % Number of tasks
FEAT       =   size(features{1},1);  % Number of features

%% Optimize log likelihood to get parameters 
paramsopt   =    minFunc(@EvalLikl,zeros(FEAT*TASK,1));

%% Reshape parameters and return the row mean
params      =   mean(reshape(paramsopt,FEAT,TASK), 2);

    function [logLikl,gradient]=EvalLikl(params)
        logLikl         =   0;
        gradient        =   zeros(FEAT,TASK);
        paramsMat       =   reshape(params,FEAT,TASK);
        
        % Loop through all tasks
        for it = 1:TASK
            NU = size(states{it},2);    % Number of users in task IT
            subLogLikl = 0;
            % Loop through all users in task IT
            for jt = 1:NU
                xs           =   features{it}(:,jt);
                ys           =   states{it}(jt);

                [lik,grad]   =   inferlikelihood(paramsMat(:,it),xs,ys);

                subLogLikl     =   subLogLikl+lik;
                gradient(:,it)    =   gradient(:,it)+grad;                
            end
            
            % Scale Objective and Gradient by number of users
            logLikl         =   logLikl + subLogLikl/NU;
            gradient(:,it)  =   gradient(:,it)/NU;
        end
        
        % Negate likelihood/gradient for minimization       
        logLikl     =   -logLikl;
        gradient    =   -gradient;
        
        % Find row mean weight
        paramsAvg = mean(paramsMat, 2);
        
        % Add regularization to log likelihood
        logLikl     =   logLikl+paramsAvg'*paramsAvg*reg(1)/2;
        for ii = 1:TASK
            diff = paramsMat(:,ii) - paramsAvg;
            logLikl = logLikl + diff'*diff*reg(2)/2;
        end
        
        % Add regularization to gradient
        %m = reg(2)/(reg(1)+TASK*reg(2));
        m = 1/TASK;
        for ii = 1:TASK
            gradient(:,ii) = gradient(:,ii) + paramsAvg*reg(1)*m;
            for jj = 1:TASK
                diff = paramsMat(:,jj) - paramsAvg;
                
                if jj == ii
                    n = 1-m;
                else
                    n = -m;
                end    
                
                gradient(:,ii) = gradient(:,ii) + diff*reg(jj+1)*n;
            end
        end
        gradient = reshape(gradient,FEAT*TASK,1);
    end

    function [l,g]=inferlikelihood(params,feature,state)
        num = exp(feature'*params);
        den = num+1;
        l = feature'*params*state - log(den);
        
        g = (state - num/den)*feature;
    end
end
