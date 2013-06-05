function params = logreg_learn(reg,states,features)
% Evaluates the objective (log-likelihood of the data)
%
% Usage:
%
%    params = logreg_learn(reg,states,features)
%
% Find MLE parameters for logistic regression.
% If M is the number of users in the dataset, 
% then STATES is a M x 1 array of state labels,
% FEATURES is a M x N binary matrix for each user
% N is the number of features
% The output is the MLE paramters for logistic regression - N x 1 array

N           =   size(features,2);

%Optimize likelihood to get parameters%
params   =    minFunc(@EvalLikl,zeros(N,1));

    function [logLikl,gradient]=EvalLikl(params)
        logLikl         =   0;
        gradient        =   zeros(size(params));

        for it=1:size(states)
            xs           =   features(it,:)';
            ys           =   states(it);
            
            [lik,grad]   =   inferlikelihood(params,xs,ys);
            
            logLikl     =   logLikl+lik;
            gradient    =   gradient+grad;
        end
        
        %Scale Objective and Gradient by number of samples
        logLikl =   logLikl/length(states);
        gradient=   gradient/length(states);
        
        %Negate likelihood/gradient for minimization
        
        logLikl     =   -logLikl;
        gradient    =   -gradient;
        
        %Add Tikhonov regularization
        
        logLikl     =   logLikl+params'*params*reg/2;
        gradient    =   gradient+reg*params;
    end

    function [l,g]=inferlikelihood(params,feature,state)
        num = exp(feature'*params);
        den = num+1;
        l = feature'*params*state - log(den);
        
        g = (state - num/den)*feature;
    end
end
