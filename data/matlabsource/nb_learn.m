function [nb] = nb_learn(features, states,alpha)
% Learns parameters for an Naive Bayes from a given data table.

%% Estimate probabilities:
nSamples = size(features,2); % size of training set
nFeatures = size(features,1);
nStates = 2;

pState = alpha*ones(nStates,1);
pObs = alpha*ones(nStates, nFeatures);


% count all occurences that we are interested in
for j=1:nStates % current State
    pState(j) = pState(j) + sum(states==(j-1));
    pObs(j,:) = pObs(j,:) + sum(repmat((states==(j-1))',1,nFeatures).*features'); % sum up all rows after filtering out only relevant rows
end

% normalize everything
for j=1:nStates
    pObs(j,:) = pObs(j,:) ./ pState(j); % normalize over all features
end
pState = pState ./ sum(pState);

% make sure that all of the above are now valid propabilities
eps = 1e-5;
assert(abs(sum(pState)-1)<eps)

% set values to model
nb.pState = pState;
nb.pObs = pObs;
