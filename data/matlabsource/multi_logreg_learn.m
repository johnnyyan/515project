function params = multi_logreg_learn(reg,statesStruct,featuresStruct)
% Evaluates the objective (log-likelihood of the data)
%
% Usage:
%
%    params = multi_logreg_learn(reg,states,features)
%
% Find MLE parameters for logistic regression. If M is the number of 
% users in the dataset, then STATES is a M x 1 array of state labels,
% FEATURES is a M x N binary matrix for each user, N is the number of 
% features
% The output is the MLE paramters for logistic regression - N x 1 array

T       =   size(featuresStruct,1);     % Number of tasks
N       =   size(featuresStruct{1},1);  % Number of features

%Optimize likelihood to get parameters%
paramsopt   =    minFunc(@EvalLikl,zeros(N*T,1));

%Reshape parameters
params      =   mean(reshape(paramsopt,N,T), 2);

    function [logLikl,gradient]=EvalLikl(params)
        logLikl         =   0;
        gradient        =   zeros(N,T);
        paramsMat       =   reshape(params,N,T);
        
        for it = 1:T
            DN = size(statesStruct{it},2);    % Number of users in Task IT
            subLogLikl = 0;
            for jt = 1:DN
                xs           =   featuresStruct{it}(:,jt);
                ys           =   statesStruct{it}(jt);

                [lik,grad]   =   inferlikelihood(paramsMat(:,it),xs,ys);

                subLogLikl     =   subLogLikl+lik;
                gradient(:,it)    =   gradient(:,it)+grad;                
            end
            
            %Scale Objective and Gradient by number of samples
            logLikl         =   logLikl + subLogLikl/DN;
            gradient(:,it)  =   gradient(:,it)/DN;
        end
        
        %Negate likelihood/gradient for minimization       
        logLikl     =   -logLikl;
        gradient    =   -gradient;
        
        %Add regularization
        paramsAvg = mean(paramsMat, 2);
        
        logLikl     =   logLikl+paramsAvg'*paramsAvg*reg(1)/2;
        for ii = 1:T
            diff = paramsMat(:,ii) - paramsAvg;
            logLikl = logLikl + diff'*diff*reg(2)/2;
        end
        
        m = reg(2)/(reg(1)+T*reg(2));
        for ii = 1:T
            gradient(:,ii) = gradient(:,ii) + paramsAvg*reg(1)*m;
            for jj = 1:T
                diff = paramsMat(:,jj) - paramsAvg;
                if jj == ii
                    n = 1-m;
                else
                    n = -m;
                end    
                gradient(:,ii) = gradient(:,ii) + diff*reg(2)*n;
            end
        end
        gradient = reshape(gradient,N*T,1);
    end

    function [l,g]=inferlikelihood(params,feature,state)
        num = exp(feature'*params);
        den = num+1;
        l = feature'*params*state - log(den);
        
        g = (state - num/den)*feature;
    end
%{
    function [l,g]=inferlikelihood(params,feature,state)
        origParams = reshape(params,N,2);
        expsum = sum(exp(feature'*origParams));
        l = feature'*origParams(:,state) - log(expsum);
        
        g = zeros(N,2);
        g(:,state) = feature;
        delta = zeros(N,2);
        for i = 1:2
            delta(:,i) =  exp(feature'*origParams(:,i)) * feature;
        end
        
        g = g - delta / expsum;
        g = reshape(g,np,1);
    end
%}
end
