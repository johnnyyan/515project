#!/usr/bin/env python

# Daniel Graf - May 20, 2013
# Extract features for coding files

import shutil
import os
from os.path import join
from argparse import ArgumentParser
import time
import math
import random
from json import load

import numpy as np

def create_dir(path):
    if not os.path.exists(path):
        os.mkdir(path)

def load_combined_features_file(path):
    file = open(path, "rb")
    data = []
    for line in file:
        features = eval(line)
        data.append(features)
    return data

def store_combined_features_file(path,data):
    file = open(path, "w")
    for item in data:
        file.write(str(item) + '\n')
    file.close()

def collect_task(contestName, taskName, taskNumber):
    userFilePath = 'username/'+contestName + '/username_'+taskName

    userFile = open(userFilePath, "rb")


    combinedFeatureFilePath = 'features/'+contestName + '_' + taskName + '.txt'
    if os.path.isfile(combinedFeatureFilePath):
        return load_combined_features_file(combinedFeatureFilePath)

    data = [];
    for username in userFile:
        # print username
        username = username.strip()
        difficulties = {0: 'small', 1: 'large'}
        bestDifficulty = -1
        featuresFilename = str(taskNumber)+'.txt'
        featuresFilepath = 'source_' + str(contestName) + '/'+str(username)+'/'+featuresFilename
        if os.path.isfile(featuresFilepath):
            featuresFile = open(featuresFilepath,'r').read()
            features = eval(featuresFile)
            # replace difficulty by boolean label
            features['difficulty'] = (features['difficulty'] == 'large')*1
            data.append(features)

    store_combined_features_file(combinedFeatureFilePath,data)
    return data

def printMatlabVector(name,vector):
    s = name
    s += ' = ['
    first = True
    for x in vector:
        if first:
            first = False
        else:
            s += ','
        s += str(x)
    s += '];\n'
    return s

def printMatlabStringVector(name,vector):
    l = max([len(x) for x in vector])
    s = name
    s += " = ['"
    first = True
    for x in vector:
        if first:
            first = False
        else:
            s += "';'"
        s += str(x)
        for i in range(l-len(str(x))): # pad to equal length
            s += " "
    s += "'];\n"
    return s

def printMatlabArray(name,array):
    s = name
    s += " = ["
    firstRow = True
    for row in array:
        if firstRow:
            firstRow = False
        else:
            s += ";"
        firstValue = True
        for value in row:
            if firstValue:
                firstValue = False
            else:
                s += ','
            s += str(value)
    s += "];\n"
    return s

def extractBinaryThresholdValues(dataSet, label):
    data = [x[label] for x in dataSet]
    mean = np.mean(data)
    median = np.median(data)
    
    # quantiles
    sortedData = data
    sortedData.sort()
    nData = len(data)
    q = []
    numQuantiles = 11
    for i in range(numQuantiles-1):
        q.append(sortedData[int(math.floor(1.0*(1+i)/numQuantiles*nData))])
    # print q 
    # print (q1,q2,q3)
    # raw_input()

    # find maximal separator
    smallValues = [x[label] for x in dataSet if x['difficulty'] == 0]
    smallValues.sort()
    nSmall = len(smallValues)
    largeValues = [x[label] for x in dataSet if x['difficulty'] == 1]
    largeValues.sort()
    nLarge = len(largeValues)
    maxDifference = 0.0
    bestThreshold = 0
    iLarge = 0
    for iSmall in range(len(smallValues)):
        while (largeValues[iLarge] < smallValues[iSmall]) and (iLarge < nLarge-1):
            iLarge += 1
        smallerShare = 1.0 * iSmall / nSmall
        largerShare = 1.0 * iLarge / nLarge
        difference = abs(smallerShare-largerShare)
        if maxDifference < difference:
            maxDifference = difference
            bestThreshold = 0.5*(smallValues[iSmall] + largeValues[iLarge]) # average
            # print (maxDifference, bestThreshold)
    # print (mean, median, bestThreshold)
    return {'mean': mean, 'median': median, 'separator' :bestThreshold, 'q': q}

def printDataSet(name,dataSet,labels, thresholds):
    s = name + '= struct();\n'

    # vectors
    s += printMatlabStringVector(name + '.labels',labels)
    for label in labels:
        projection = [x[label] for x in dataSet]
        s += printMatlabVector(name + "."  + label, projection)
    
    # arrays
    label = 'difficulty'
    projection = [x[label] for x in dataSet]
    s += printMatlabVector(name + "."  + 'states', projection)

    featureArray = []
    binaryFeatureArray = []
    for label in labels:
        featureArray.append([x[label] for x in dataSet])
        # for i in range(len(thresholds[label]['q'])):
        #     binaryFeatureArray.append([(x[label]>thresholds[label]['q'][i])*1 for x in dataSet])
        # binaryFeatureArray.append([(x[label]>thresholds[label]['median'])*1 for x in dataSet])
        binaryFeatureArray.append([(x[label]>thresholds[label]['mean'])*1 for x in dataSet])
        # binaryFeatureArray.append([(x[label]>thresholds[label]['separator'])*1 for x in dataSet])

    s += printMatlabArray(name + '.features', featureArray)
    s += printMatlabArray(name + '.binaryFeatures', binaryFeatureArray)
    return s

def export_task(contestName, taskName, taskNumber, taskOutputNumber):
    # set random seed for reproducability of train / test splitting
    random.seed(0)

    data = collect_task(contestName, taskName, taskNumber)

    # the two classes
    smallSet = [x for x in data if x['difficulty'] == 0]
    largeSet = [x for x in data if x['difficulty'] == 1]

    print "Task " + str(taskNumber) +": " + taskName + " with small: " + str(len(smallSet)) + " and large: " + str(len(largeSet))
    # probability for assigning to training set
    p = 0.5 # split fifty-fifity
    trainSet = []
    testSet = []
    for x in data:
        if random.random()<p:
            trainSet.append(x)
        else:
            testSet.append(x)
    # labels = ['length', 'lines', 'includesCount', 'loops', 'vars'];
    # labels = ['length', 'lines', 'includesCount', 'loops', 'vars', 'depth'];
    # labels = ['length', 'lines', 'includesCount', 'includesLength', 'definesCount', 'definesLength', 'commentsLength', 'commentsCount', 'loops', 'vars', 'depth', 'deeplength'];
    # labels = ['length', 'lines', 'includesCount', 'includesLength', 'definesCount', 'definesLength', 'commentsLength', 'commentsCount', 'loops', 'vars', 'depth', 'deeplength','maxConstant'];
    labels = ['length', 'lines', 'includesCount', 'includesLength', 'definesCount', 'definesLength', 'commentsLength', 'commentsCount', 'loops', 'vars', 'int','float','double','char','long', 'depth', 'deepLength', 'deepCount', 'for', 'while', 'if', 'else', 'switch', 'maxConstant','functionCount', 'set', 'priority_queue', 'map', 'multimap', 'queue', 'stack', 'list', 'vector', 'unordered_map', 'unordered_set'];

    # get medians for binary conversion, based on the trainingSet
    thresholds = {}
    for label in labels:
        # print label
        thresholds[label] = extractBinaryThresholdValues(trainSet, label)
        # print thresholds[label]
    outDirectory = 'matlabdata'
    create_dir(outDirectory)

    fileContents = [smallSet, largeSet, trainSet, testSet]
    fileNames = ['smallSet', 'largeSet', 'trainSet', 'testSet']
    for (fileName,fileContents) in zip(fileNames, fileContents):
        # print fileName
        outFilePath = outDirectory + '/task' + str(taskOutputNumber) + '_' + fileName + '.m'     
        s = printDataSet(fileName, fileContents, labels, thresholds)
        outFile = open(outFilePath, "w")
        outFile.write(s)
        outFile.close()

def export_tasks():
    # contestNames = ['1a', '1a', '1a', 'qualification', 'qualification', 'qualification', 'qualification']
    # taskNames = ['bullseye', 'energy', 'luck', 'tictactoe', 'lawnmower', 'fairsquare', 'treasure']
    # taskNumbers = [0,1,2,0,1,2,3]
    # taskOutputNumbers = [0,1,2,3,4,5,6]

    contestNames = ['1a']
    taskNames = ['bullseye']
    taskNumbers = [0]
    taskOutputNumbers = [0]


    # contestNames = ['1a']
    # taskNames = ['energy']
    # taskNumbers = [1]
    # taskOutputNumbers = [1]

    # getting rid of task tictactoe
    contestNames = ['1a', '1a', '1a', 'qualification', 'qualification', 'qualification']
    taskNames = ['bullseye', 'energy', 'luck', 'lawnmower', 'fairsquare', 'treasure']
    taskNumbers = [0,1,2,1,2,3]
    taskOutputNumbers = [1,2,3,4,5,6]


    for (contestName, taskNumber, taskName, taskOutputNumber) in zip(contestNames, taskNumbers,taskNames,taskOutputNumbers):
        export_task(contestName,taskName,taskNumber,taskOutputNumber)


export_tasks()