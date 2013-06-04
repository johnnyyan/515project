#!/usr/bin/env python

# Daniel Graf - May 14, 2013
# Extract features for coding files

import featureCodeAnalysis
import shutil
import os
from os.path import join
from argparse import ArgumentParser
import time
import math
import random
from json import load

# constants

# parser = ArgumentParser(description="Render some preprocessed frames to a movie")

# parser.add_argument('workdir', metavar='DIRECTORY',
#                    help='Directory where the magic happens')


# args = parser.parse_args()

# workdir = args.workdir

def delete_dir(path):
    if os.path.exists(path):
        shutil.rmtree(path)

def create_dir(path):
    if not os.path.exists(path):
        os.mkdir(path)

def clean_dir(path):
    delete_dir(path)
    create_dir(path)


def process_task(contestName, taskName, taskNumber):
    userFilePath = 'username/' + contestName + '/username_'+taskName

    userFile = open(userFilePath, "rb")

    count = 0
    usernames = []
    for username in userFile:
        username = username.strip()
        usernames.append(username)
    userFile.close()

    for username in usernames:
        difficulties = {0: 'small', 1: 'large'}
        bestDifficulty = -1
        for difficulty in range(2): # find highest solved task
            archiveFilename = str(taskNumber)+'_'+str(difficulty)+'.zip'
            archivePath = 'source_' + str(contestName) + '/'+str(username)+'/'+archiveFilename
            if os.path.isfile(archivePath):
                print username + " solved " + str(difficulty)
                bestDifficulty = difficulty
            else:
                # pass
                print username + " missed " + str(difficulty)
        if bestDifficulty >= 0:
            difficulty = difficulties[bestDifficulty]
            archiveFilename = str(taskNumber)+'_'+str(bestDifficulty)+'.zip'
            archivePath = 'source_' + str(contestName) + '/'+str(username)+'/'+archiveFilename
            process_submission(archiveFilename, archivePath, difficulty)
        count += 1
        print str(100.0*count/len(usernames)) + " percent done"

def cleanup_task(taskName, taskNumber):
    userFilePath = 'username/username_'+taskName

    userFile = open(userFilePath, "rb")

    for username in userFile:
        username = username.strip()
        for difficulty in range(2):
            featuresFilename = str(taskNumber)+'_'+str(difficulty)+'.txt'
            featuresPath = 'source_' + str(contestName) + '/'+str(username)+'/'+featuresFilename
            if os.path.isfile(featuresPath):
                print featuresPath
                os.remove(featuresPath)
    userFile.close()


def process_submission(archiveFilename, archivePath, difficulty):
    basePath = archivePath[:-6]
    featuresPath = basePath+".txt"
    clean_dir('tmp')
    copyPath = 'tmp/' + archiveFilename
    shutil.copy(archivePath,'tmp/')
    unpackCommand = 'cd tmp; unzip ' + archiveFilename + '; rm ' + archiveFilename
    os.system(unpackCommand)
    bundleCommand = "cd tmp; cat * > ../tmp.txt"
    os.system(bundleCommand)
    codeFile = open('tmp.txt', "rb")
    source = ""
    for line in codeFile:
        source += line
    # print source
    codeFile.close()
    features = process_source(source)
    features['difficulty'] = difficulty
    print features
    # raw_input()
    featuresFile = open(featuresPath,"w")
    featuresFile.write(str(features))
    featuresFile.close()
    # raw_input()

def process_source(source):
    return featureCodeAnalysis.analyzeCode(source)

def process_tasks():
    # contestNames = ['1a', '1a', '1a', 'qualification', 'qualification', 'qualification', 'qualification']
    # taskNames = ['bullseye', 'energy', 'luck', 'tictactoe', 'lawnmower', 'fairsquare', 'treasure']
    # taskNumbers = [0,1,2,0,1,2,3]
    # taskOutputNumbers = [0,1,2,3,4,5,6]

    # contestNames = ['qualification', 'qualification', 'qualification', 'qualification']
    # taskNames = ['tictactoe', 'lawnmower', 'fairsquare', 'treasure']
    # taskNumbers = [0,1,2,3]
    # taskOutputNumbers = [3,4,5,6]

    contestNames = ['1a']
    taskNames = ['bullseye']
    taskNumbers = [0]
    taskOutputNumbers = [0]

    # contestNames = ['1a']
    # taskNames = ['energy']
    # taskNumbers = [1]
    # taskOutputNumbers = [1]

    contestNames = ['1a', '1a', '1a', 'qualification', 'qualification', 'qualification']
    taskNames = ['bullseye', 'energy', 'luck', 'lawnmower', 'fairsquare', 'treasure']
    taskNumbers = [0,1,2,1,2,3]
    taskOutputNumbers = [0,1,2,3,4,5]

    for (contestName, taskNumber, taskName, taskOutputNumber) in zip(contestNames, taskNumbers,taskNames,taskOutputNumbers):
        process_task(contestName,taskName,taskNumber)

process_tasks()

