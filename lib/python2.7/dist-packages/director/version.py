
def versionString():
    return '0.1.0'

def versionTuple():
    return (versionMajor(), versionMinor(), versionPatch())

def versionMajor():
    return 0

def versionMinor():
    return 1

def versionPatch():
    return 0

def branch():
    return 'HEAD'

def commitHash():
    return '6e4922051dbcb201c237151784c5ca33409d3bf7'

def gitDescribe():
    return '0.1.0-173-g6e49220'
