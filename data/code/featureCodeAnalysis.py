def recursionDepth(source):
    brackets = []
    for i in range(len(source)):
        if source[i] in ['{', '}']:
            brackets.append(source[i])
    # print brackets
    max_depth = 0
    depth = 0
    for i in range(len(brackets)):
        c = brackets[i]
        if c=='{':
            depth+=1
            max_depth = max(max_depth, depth)
        elif c=='}':
            depth = max(0, depth-1)
    # print max_depth
    # if max_depth == 0:
    #   raw_input()
    return max_depth

def deepestCode(source, max_depth):
    deepest_code = ""
    depth = 0
    for i in range(len(source)):
        c = source[i]
        if c=='{':
            depth+=1
        elif c=='}':
            depth = max(0, depth-1)
        elif depth == max_depth:
            deepest_code += c
    # print deepest_code
    # raw_input()
    return deepest_code

def removeWindowsNewline(source):
    rest = ""
    for i in range(len(source)):
        if source[i] != '\r':
            rest += source[i]
    return rest

def numberOfFunctions(source):
    depth = 0
    count = 0
    for i in range(len(source)):
        c = source[i]
        if c=='{':
            depth+=1
        elif c=='}':
            if(depth==1): # we excited a function again
                count += 1
            depth = max(0, depth-1)
    return count

def stripComments(source):
    comments = []
    rest = ""
    N = len(source)
    i = 0
    isComment = False
    while i < N-1:
        if source[i:i+2] == '/*':
            isComment = True
            comments.append("")
            while (i<N-1) and (source[i:i+2] != '*/'):
                comments[-1] += source[i]
                i+=1
        elif source[i:i+2] == '//':
            isComment = True
            comments.append("")
            while (i<N-1) and (source[i:i+1] != '\n'):
                comments[-1] += source[i]
                i+=1
        else:
            isComment = False
        rest += source[i]
        i+=1
    if not isComment:
        rest += source[i]
    # print rest
    # print "Comments: " + str(comments)
    return (comments,rest)

def filterLinesContaing(source,pattern):
    lines = source.split('\n')
    rest = ""
    marked = []
    for line in lines:
        if pattern in line:
            marked.append(line)
        else:
            rest += line + '\n'
    return(marked,rest)

def stripDefines(source):
    (defines,rest) = filterLinesContaing(source,"#define")
    # print "Defines: " + str(defines)
    return(defines,rest)

def stripIncludes(source):
    (includes,rest) = filterLinesContaing(source,"#include")
    # print "Includes: " + str(includes)
    return(includes,rest)

def countOccurence(source,pattern):
    return len(source.split(pattern))-1

def extractIntegerConstants(source):
    constants = [0]
    numbers = ['0','1','2','3','4','5','6','7','8','9']
    N = len(source)
    i = 0
    while i<N:
        c = source[i]
        if c in numbers:
            number = int(c)
            i+=1
            while (i<N) and (source[i] in numbers):
                number *= 10;
                number += int(source[i])
                i += 1
            if (i==N):
                constants.append(number)
            elif source[i] == '.': # it was a float
                i += 1
                while (i<N) and (source[i] in numbers):
                    i += 1
            else:
               constants.append(number)
        i+=1
    # print constants
    # raw_input()
    return constants

def extractKeywords(source):
    keywords = []
    i = 0
    N = len(source)
    while i < N:
        word = ""
        while i<N and (source[i].isalpha()):
            word += source[i]
            i += 1
        if word != "":
            keywords.append(word)
        i += 1
    # print "Keywords: " + str(keywords)
    # raw_input()
    return keywords


def analyzeCode(source):   
    (comments,rest) = stripComments(source)
    constants = extractIntegerConstants(rest)

    (defines, rest) = stripDefines(rest)
    (includes, rest) = stripIncludes(rest)
    # print rest
    # raw_input()
    keywords = extractKeywords(rest)

    labels = ['length', 'lines', 'includesCount', 'includesLength', 'definesCount', 'definesLength', 'commentsLength', 'commentsCount', 'loops', 'vars', 'int','float','double','char','long', 'depth', 'deepLength', 'deepCount', 'for', 'while', 'if', 'else', 'switch', 'maxConstant','functionCount', 'set', 'priority_queue', 'map', 'multimap', 'queue', 'stack', 'list', 'vector', 'unordered_map', 'unordered_set'];
    features = {}
    features['length'] = len(source)
    features['lines'] = countOccurence(rest,'\n')

    features['includesCount'] = len(includes)
    features['includesLength'] = sum([len(x) for x in includes])
    features['definesCount'] = len(defines)
    features['definesLength'] = sum([len(x) for x in defines])
    features['commentsLength'] = sum([len(x) for x in comments])
    features['commentsCount'] = len(comments)
    
    features['loops'] = keywords.count('for') + keywords.count('while')
    features['for'] = keywords.count('for')
    features['while'] = keywords.count('while')
    features['vars'] = keywords.count('int') + keywords.count('float') + keywords.count('double') + keywords.count('char') + keywords.count('long')

    features['int'] = keywords.count('int')
    features['float'] = keywords.count('float')
    features['double'] = keywords.count('double')
    features['char'] = keywords.count('char')
    features['long'] = keywords.count('long')

    max_depth = recursionDepth(rest)
    features['depth'] = max_depth
    deepest_code = deepestCode(rest,max_depth)
    features['deepLength'] = len(deepest_code)
    features['deepCount'] = countOccurence(deepest_code,'\n')

    features['if'] = keywords.count('if')
    features['else'] = keywords.count('else')
    features['switch'] = keywords.count('switch')

    features['maxConstant'] = max(constants)
    features['functionCount'] = numberOfFunctions(rest)

    features['set'] = keywords.count('set')
    features['map'] = keywords.count('map')
    features['multimap'] = keywords.count('multimap')
    features['priority_queue'] = keywords.count('priority_queue')
    features['queue'] = keywords.count('queue')
    features['stack'] = keywords.count('stack')
    features['list'] = keywords.count('list')
    features['vector'] = keywords.count('vector')
    features['unordered_map'] = keywords.count('unordered_map')
    features['unordered_set'] = keywords.count('unordered_set')
    return features
