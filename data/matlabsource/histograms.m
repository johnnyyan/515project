clear;
task2_largeSet;
task2_smallSet;

bins = 0:5:100;
%hist([largeSet.features(4,1:1000)',smallSet.features(4,1:1000)'],bins);
for i = 1:5
    largeSet.labels(i,:)
    stat = [mean(largeSet.features(i,:)), mean(smallSet.features(i,:));...
    median(largeSet.features(i,:)), median(smallSet.features(i,:));...
    mode(largeSet.features(i,:)), mode(smallSet.features(i,:));...
    std(largeSet.features(i,:)), std(smallSet.features(i,:))]
end

pObs = [];
for i = 1:5
    largeSet.labels(i,:)
    stat = [mean(smallSet.binaryFeatures(i,:)), mean(largeSet.binaryFeatures(i,:))]
    pObs = [pObs,stat'];
end

'pObs'
pObs

'pState'
s = numel(smallSet.states);
l = numel(largeSet.states);
n = s+l;
stat = [s/n, l/n]
