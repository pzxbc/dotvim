# -*- coding: utf-8 -*-

import os
f = open('filenametags', 'w')
f.write('!_TAG_FILE_SORTED\t2\t/2=foldcase/\n')
f.close()

gitPath = r'C:\"Program Files (x86)"\Git\bin'
findExe = gitPath + r'\find.exe'
findCommand = findExe + r' . -not -regex ".*\.\(png\|gif\|dll\)"' + r' -type f -printf "%f\t%p\t1\n"'
sortExe = gitPath + r'\sort.exe'
sortCommand = sortExe + ' -f'
execCommand = findCommand + ' | ' + sortCommand + ' >> filenametags'
print(execCommand)
os.system(execCommand)